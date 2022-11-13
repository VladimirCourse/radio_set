import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_set/model/device_model.dart';

// enum TransmitEventType { found, connected, disconnected, data }

// class TransmitEventModel {
//   final TransmitEventType type;
//   final DeviceModel device;

//   const TransmitEventModel({required this.type, required this.device});
// }

part 'transmit_event_model.freezed.dart';

@freezed
class TransmitEventModel with _$TransmitEventModel {
  const factory TransmitEventModel.connected({required DeviceModel device}) = _Connected;

  const factory TransmitEventModel.found({required DeviceModel device}) = _Found;

  const factory TransmitEventModel.disconnected({required DeviceModel device}) = _Disconnected;

  const factory TransmitEventModel.dataReceive({required DeviceModel device, required Uint8List data}) = _DataReceive;
}
