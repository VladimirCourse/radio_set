import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:mock_data/mock_data.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:radio_set/model/data_event_model.dart';
import 'package:radio_set/model/device_event_model.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/repository/transmit/transmit_repository.dart';
import 'package:rxdart/rxdart.dart';

class NearbyTransmitRepository extends TransmitRepository {
  static const channel = 'vl.radio_set.yandex_';

  final _nearby = Nearby();

  final Map<String, ConnectionInfo> _endpoints = {};
  final Map<String, DeviceModel> _devices = {};

  final _devicesSubject = BehaviorSubject<DeviceEventModel>();
  final _dataSubject = BehaviorSubject<DataEventModel>();

  @override
  List<DeviceModel> get devices => _devices.values.toList();

  @override
  Stream<DeviceEventModel> get devicesStream => _devicesSubject.stream;

  @override
  Stream<DataEventModel> get dataStream => _dataSubject.stream;

  @override
  final userName = '${mockName()} ${mockUUID().substring(32)}';

  @override
  Future<void> start() async {
    await _advertiseNearby();
  }

  @override
  Future<void> discover() async {
    await _nearby.stopDiscovery();

    await _discoverNearby();
  }

  @override
  Future<void> startDataSend() async {
    final message = Uint8List.fromList(utf8.encode('start'));

    for (final endpoint in _endpoints.keys) {
      _nearby.sendBytesPayload(endpoint, message);
    }
  }

  @override
  Future<void> sendData(Uint8List data) async {
    for (final endpoint in _endpoints.keys) {
      await _nearby.sendBytesPayload(endpoint, data);
    }
  }

  @override
  Future<void> stopDataSend() async {
    final message = Uint8List.fromList(utf8.encode('stop'));

    for (final endpoint in _endpoints.keys) {
      _nearby.sendBytesPayload(endpoint, message);
    }
  }

  @override
  Future<void> stop() async {
    await _nearby.stopDiscovery();
    await _nearby.stopAllEndpoints();
    await _nearby.stopAdvertising();
  }

  @override
  Future<void> close() async {
    await stop();

    await _devicesSubject.close();
    await _dataSubject.close();
  }

  Future<void> _advertiseNearby() async {
    await _nearby.startAdvertising(
      userName,
      Strategy.P2P_POINT_TO_POINT,
      serviceId: channel,
      onConnectionInitiated: _acceptConnection,
      onConnectionResult: (id, status) {
        if (_devices.containsKey(id)) {
          _devicesSubject.add(DeviceEventModel.connected(device: _devices[id]!));
        }
      },
      onDisconnected: (id) {
        if (_devices.containsKey(id)) {
          _devicesSubject.add(DeviceEventModel.disconnected(device: _devices[id]!));
        }

        _endpoints.remove(id);
        _devices.remove(id);
      },
    );
  }

  Future<void> _discoverNearby() async {
    try {
      await _nearby.startDiscovery(
        userName,
        Strategy.P2P_POINT_TO_POINT,
        serviceId: channel,
        onEndpointFound: (id, name, serviceId) {
          _nearby.requestConnection(
            userName,
            id,
            onConnectionInitiated: _acceptConnection,
            onConnectionResult: (id, status) {
              if (_devices.containsKey(id)) {
                _devicesSubject.add(DeviceEventModel.connected(device: _devices[id]!));
              }
            },
            onDisconnected: (id) {
              if (_devices.containsKey(id)) {
                _devicesSubject.add(DeviceEventModel.disconnected(device: _devices[id]!));
              }

              _endpoints.remove(id);
              _devices.remove(id);
            },
          );
        },
        onEndpointLost: (id) {
          if (_devices.containsKey(id)) {
            _devicesSubject.add(DeviceEventModel.disconnected(device: _devices[id]!));
          }

          _endpoints.remove(id);
          _devices.remove(id);
        },
      );
    } catch (ex) {}
  }

  Future<void> _acceptConnection(String id, ConnectionInfo info) async {
    try {
      await _nearby.acceptConnection(
        id,
        onPayLoadRecieved: (id, payload) async {
          final bytes = payload.bytes;
          if (payload.type == PayloadType.BYTES && bytes != null) {
            if (_devices.containsKey(id)) {
              try {
                final msg = utf8.decode(Uint8List.fromList(bytes));
                if (msg == 'start') {
                  _devices[id] = _devices[id]!.copyWith(isTransmitting: true);
                  _dataSubject.add(DataEventModel.startAudio(device: _devices[id]!));
                } else if (msg == 'stop') {
                  _devices[id] = _devices[id]!.copyWith(isTransmitting: false);
                  _dataSubject.add(DataEventModel.stopAudio(device: _devices[id]!));
                }
              } catch (ex) {
                _dataSubject.add(DataEventModel.audioData(device: _devices[id]!, data: payload.bytes!));
              }
            }
          }
        },
        onPayloadTransferUpdate: (id, payloadTransferUpdate) {},
      );

      _endpoints[id] = info;
      _devices[id] = DeviceModel(id: id, name: info.endpointName, isTransmitting: false);
    } catch (ex) {
      await _nearby.stopDiscovery();
      await Future.delayed(Duration(seconds: Random().nextInt(3) + 2));
      await _discoverNearby();
    }
  }
}
