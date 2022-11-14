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
  static const maxTransmitSeconds = 5;

  final TransmitRepository transmitRepository;
  final AudioRepository audioRepository;

  StreamSubscription? _devicesSubscription;
  StreamSubscription? _dataSubscription;
  StreamSubscription? _audioSubscription;

  DateTime? _recordDate;
  bool _isReceivingData = false;

  RadioSetBloc({
    required this.transmitRepository,
    required this.audioRepository,
  }) : super(RadioSetState(name: transmitRepository.userName)) {
    audioRepository.init();

    _audioSubscription = audioRepository.recordiingStream.listen((data) async {
      final sendTime = (_recordDate?.difference(DateTime.now()).inSeconds)?.abs() ?? 0;

      if (sendTime < maxTransmitSeconds) {
        await transmitRepository.sendData(data);
      } else {
        add(const RadioSetEvent.stopRecord());
      }
    });

    _devicesSubscription = transmitRepository.devicesStream.listen((event) {
      event.mapOrNull(
        connected: ((_) => add(const RadioSetEvent.refreshDevices())),
        disconnected: ((_) => add(const RadioSetEvent.refreshDevices())),
      );
    });

    _dataSubscription = transmitRepository.dataStream.listen((event) async {
      event.mapOrNull(
        startAudio: (_) async {
          _isReceivingData = true;
          add(const RadioSetEvent.refreshDevices());
          await audioRepository.startPlay();
        },
        audioData: (data) async {
          await audioRepository.writeAudioSample(data.data);
        },
        stopAudio: (_) async {
          await audioRepository.stopPlay();
          add(const RadioSetEvent.refreshDevices());
          _isReceivingData = false;
        },
      );
    });

    on<_StartTransmit>(_handleStartTransmit);
    on<_RefreshDevices>(_handleRefreshDevices);
    on<_StopTransmit>(_handleStopTransmit);
    on<_StartRecord>(_handleStartRecord);
    on<_StopRecord>(_handleStopRecord);
  }

  void _handleStartTransmit(_StartTransmit event, Emitter<RadioSetState> emit) async {
    try {
      _isReceivingData = false;

      emit(state.copyWith(isTransmitting: true, isLoading: true));

      await transmitRepository.start();

      emit(state.copyWith(isLoading: false));
    } catch (ex) {
      emit(state.copyWith(isTransmitting: false, isLoading: false));
    }
  }

  void _handleRefreshDevices(_RefreshDevices event, Emitter<RadioSetState> emit) async {
    emit(state.copyWith(devices: transmitRepository.devices));
  }

  void _handleStopTransmit(_StopTransmit event, Emitter<RadioSetState> emit) async {
    try {
      _isReceivingData = false;

      await transmitRepository.stop();

      emit(state.copyWith(isTransmitting: false, devices: []));
    } catch (ex) {
      emit(state.copyWith(isTransmitting: true));
    }
  }

  void _handleStartRecord(_StartRecord event, Emitter<RadioSetState> emit) async {
    if (!_isReceivingData) {
      try {
        emit(state.copyWith(isRecording: true, devices: transmitRepository.devices));

        _recordDate = DateTime.now();

        await transmitRepository.startDataSend();
        await audioRepository.startRecord();
      } catch (ex) {
        emit(state.copyWith(isRecording: true));
      }
    }
  }

  void _handleStopRecord(_StopRecord event, Emitter<RadioSetState> emit) async {
    try {
      emit(state.copyWith(isRecording: false, devices: transmitRepository.devices));

      await audioRepository.stopRecord();
      await transmitRepository.stopDataSend();
    } catch (ex) {
      emit(state.copyWith(isRecording: true));
    }
  }

  @override
  Future<void> close() async {
    await _dataSubscription?.cancel();
    await _devicesSubscription?.cancel();
    await _audioSubscription?.cancel();

    super.close();
  }
}
