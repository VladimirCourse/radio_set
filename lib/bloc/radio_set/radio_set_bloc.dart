import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/repository/audio/audio_repository.dart';
import 'package:radio_set/repository/transmit/transmit_repository.dart';

part 'radio_set_bloc.freezed.dart';
part 'radio_set_event.dart';
part 'radio_set_state.dart';

class RadioSetBloc extends Bloc<RadioSetEvent, RadioSetState> {
  final TransmitRepository transmitRepository;
  final AudioRepository audioRepository;

  StreamSubscription? _subscription;

  RadioSetBloc({
    required this.transmitRepository,
    required this.audioRepository,
  }) : super(const RadioSetState()) {
    _subscription = transmitRepository.eventsStream.listen((event) {
      print(event);
      event.mapOrNull(
        connected: ((_) => add(const RadioSetEvent.refreshDevices())),
        disconnected: ((_) => add(const RadioSetEvent.refreshDevices())),
      );
    });

    on<_StartTransmit>(_handleStartTransmit);
    on<_RefreshDevices>(_handleRefreshDevices);
    on<_StopTransmit>(_handleStopTransmit);
  }

  void _handleStartTransmit(_StartTransmit event, Emitter<RadioSetState> emit) async {
    try {
      emit(state.copyWith(isTransmitting: true, isLoading: true));

      await transmitRepository.start();

      emit(state.copyWith(isLoading: false));
    } catch (ex) {
      emit(state.copyWith(isTransmitting: false, isLoading: false));
      print(ex);
    }
  }

  void _handleRefreshDevices(_RefreshDevices event, Emitter<RadioSetState> emit) async {
    emit(state.copyWith(devices: transmitRepository.devices));
  }

  void _handleStopTransmit(_StopTransmit event, Emitter<RadioSetState> emit) async {
    try {
      await transmitRepository.stop();

      emit(state.copyWith(isTransmitting: false, devices: []));
    } catch (ex) {
      print(ex);
    }
  }

  // void _handleSendBluetooth(_SendBluetooth event, Emitter<RadioSetState> emit) async {
  //   try {
  //     await audioRepository.stopSignal();
  //     await bluetoothRepository.startSignal();

  //     emit(
  //       RadioSetState(
  //         id: bluetoothRepository.deviceId,
  //         singalType: SingalType.bluetooth,
  //         isSending: bluetoothRepository.isSending,
  //       ),
  //     );
  //   } catch (ex) {
  //     event.onError?.call();
  //   }
  // }

  @override
  Future<void> close() async {
    // await audioRepository.stopSignal();
    // await bluetoothRepository.stopSignal();
    await _subscription?.cancel();

    super.close();
  }
}
