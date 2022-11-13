part of 'radio_set_bloc.dart';

typedef ErrorCallback = void Function();

@freezed
class RadioSetEvent with _$RadioSetEvent {
  const factory RadioSetEvent.refreshDevices() = _RefreshDevices;

  const factory RadioSetEvent.startTransmit({required ErrorCallback onError}) = _StartTransmit;

  const factory RadioSetEvent.stopTransmit() = _StopTransmit;

  const factory RadioSetEvent.startRecord({required ErrorCallback onError}) = _StartRecord;

  const factory RadioSetEvent.stopRecord() = _StopRecord;
}
