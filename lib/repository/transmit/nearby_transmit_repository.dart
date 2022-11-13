import 'dart:math';
import 'dart:typed_data';

import 'package:nearby_connections/nearby_connections.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/model/transmit_event_model.dart';
import 'package:radio_set/repository/transmit/transmit_repository.dart';
import 'package:rxdart/rxdart.dart';

class NearbyTransmitRepository extends TransmitRepository {
  final Map<String, ConnectionInfo> _endpoints = {};
  final _nearby = Nearby();
  final _connectionsSubject = BehaviorSubject<TransmitEventModel>();

  @override
  List<DeviceModel> get devices =>
      _endpoints.keys.map((key) => DeviceModel(id: key, name: _endpoints[key]?.endpointName ?? 'Unknown')).toList();

  @override
  Stream<TransmitEventModel> get eventsStream => _connectionsSubject.stream;

  @override
  final userName = Random().nextInt(10000).toString();

  @override
  Future<void> start() async {
    await _nearby.startAdvertising(
      userName,
      Strategy.P2P_STAR,
      onConnectionInitiated: _acceptConnection,
      onConnectionResult: (id, status) {
        print('connected $id');
        _connectionsSubject.add(
          TransmitEventModel.connected(
            device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
          ),
        );
        // showSnackbar(status);
      },
      onDisconnected: (id) {
        _connectionsSubject.add(
          TransmitEventModel.disconnected(
            device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
          ),
        );

        _endpoints.remove(id);

        print('disconnected $id');
        // showSnackbar("Disconnected: ${endpointMap[id]!.endpointName}, id $id");
        // setState(() {
        //   endpointMap.remove(id);
        // });
      },
    );

    await Nearby().startDiscovery(
      userName,
      Strategy.P2P_STAR,
      onEndpointFound: (id, name, serviceId) {
        Nearby().requestConnection(
          userName,
          id,
          onConnectionInitiated: _acceptConnection,
          onConnectionResult: (id, status) {
            // showSnackbar(status);
            print('connected $id');

            _connectionsSubject.add(
              TransmitEventModel.connected(
                device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
              ),
            );
          },
          onDisconnected: (id) {
            print('disconnected $id');

            _connectionsSubject.add(
              TransmitEventModel.disconnected(
                device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
              ),
            );

            _endpoints.remove(id);

            // setState(() {
            //   endpointMap.remove(id);
            // });
            // showSnackbar("Disconnected from: ${endpointMap[id]!.endpointName}, id $id");
          },
        );
      },
      onEndpointLost: (id) {
        // showSnackbar("Lost discovered Endpoint: ${endpointMap[id]!.endpointName}, id $id");
      },
    );
  }

  @override
  Future<void> transmit(Uint8List data) async {
    for (final endpoint in _endpoints.keys) {
      // String a = Random().nextInt(100).toString();

      _nearby.sendBytesPayload(endpoint, data);
    }
  }

  @override
  Future<void> stop() async {
    await _nearby.stopDiscovery();

    await _nearby.stopAdvertising();
  }

  Future<void> _acceptConnection(String id, ConnectionInfo info) async {
    try {
      print('accepting $id');

      _connectionsSubject.add(
        TransmitEventModel.found(
          device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
        ),
      );

      await _nearby.acceptConnection(
        id,
        onPayLoadRecieved: (id, payload) async {
          if (payload.type == PayloadType.BYTES) {
            print('pd');

            _connectionsSubject.add(
              TransmitEventModel.dataReceive(
                device: DeviceModel(id: id, name: _endpoints[id]?.endpointName ?? 'Unknown'),
                data: payload.bytes!,
              ),
            );
            // if (payload.bytes != null) {
            //   _micChunks.add(payload.bytes!);
            // }
          } else if (payload.type == PayloadType.FILE) {
            // showSnackbar(endid + ": File transfer started");
            // tempFileUri = payload.uri;
          }
        },
        onPayloadTransferUpdate: (id, payloadTransferUpdate) {
          print('pd succ');
        },
      );

      _endpoints[id] = info;
    } catch (ex) {
      _endpoints.remove(id);
    }
  }
}
