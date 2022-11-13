import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_set/model/device_model.dart';

part 'device_event_model.freezed.dart';

@freezed
class DeviceEventModel with _$DeviceEventModel {
  const factory DeviceEventModel.connected({required DeviceModel device}) = _Connected;

  const factory DeviceEventModel.disconnected({required DeviceModel device}) = _Disconnected;
}
