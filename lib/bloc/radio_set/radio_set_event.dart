part of 'radio_set_bloc.dart';

typedef ErrorCallback = void Function();

@freezed
class RadioSetEvent with _$RadioSetEvent {
  const factory RadioSetEvent.refreshDevices() = _RefreshDevices;

  const factory RadioSetEvent.startTransmit() = _StartTransmit;

  const factory RadioSetEvent.stopTransmit({ErrorCallback? onError}) = _StopTransmit;
}
