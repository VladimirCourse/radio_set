part of 'radio_set_bloc.dart';

@freezed
class RadioSetState with _$RadioSetState {
  const factory RadioSetState({
    required String name,
    @Default(false) bool isLoading,
    @Default(false) bool isTransmitting,
    @Default(false) bool isRecording,
    @Default([]) List<DeviceModel> devices,
  }) = _Data;
}
