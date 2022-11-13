part of 'radio_set_bloc.dart';

@freezed
class RadioSetState with _$RadioSetState {
  const factory RadioSetState({
    @Default(false) bool isLoading,
    @Default(false) bool isTransmitting,
    @Default([]) List<DeviceModel> devices,
  }) = _Data;
}
