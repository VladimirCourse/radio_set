import 'package:flutter/foundation.dart';
import 'package:radio_set/model/data_event_model.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/model/device_event_model.dart';

abstract class TransmitRepository {
  String get userName;

  List<DeviceModel> get devices;

  Stream<DeviceEventModel> get devicesStream;

  Stream<DataEventModel> get dataStream;

  Future<void> start();

  Future<void> startDataSend();

  Future<void> sendData(Uint8List data);

  Future<void> stopDataSend();

  Future<void> stop();

  Future<void> close();
}
