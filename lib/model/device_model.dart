import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_model.freezed.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required String id,
    required String name,
    required bool isTransmitting,
  }) = _DeviceModel;
}
