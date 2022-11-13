import 'package:flutter/foundation.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/model/transmit_event_model.dart';

abstract class TransmitRepository {
  String get userName;

  List<DeviceModel> get devices;

  Stream<TransmitEventModel> get eventsStream;

  Future<void> start();

  Future<void> transmit(Uint8List data);

  Future<void> stop();
}
