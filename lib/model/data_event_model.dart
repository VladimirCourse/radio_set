import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_set/model/device_model.dart';

part 'data_event_model.freezed.dart';

@freezed
class DataEventModel with _$DataEventModel {
  const factory DataEventModel.startAudio({required DeviceModel device}) = _StartAudio;

  const factory DataEventModel.audioData({required DeviceModel device, required Uint8List data}) = _AudioData;

  const factory DataEventModel.stopAudio({required DeviceModel device}) = _StopAudio;
}
