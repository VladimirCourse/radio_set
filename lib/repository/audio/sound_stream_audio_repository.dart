import 'dart:typed_data';

import 'package:radio_set/repository/audio/audio_repository.dart';
import 'package:sound_stream/sound_stream.dart';

class SoundStreamAudioRepository extends AudioRepository {
  final _recorder = RecorderStream();
  final _player = PlayerStream();

  @override
  bool get isRecording => throw UnimplementedError();

  @override
  Stream<Uint8List> get recordiingStream => _recorder.audioStream;

  @override
  Future<void> init() async {
    await _recorder.initialize();
    await _player.initialize();
  }

  @override
  Future<void> startRecord() async {
    await _recorder.start();
  }

  @override
  Future<void> stopRecord() async {
    await _recorder.stop();
  }

  @override
  Future<void> startPlay() async {
    await _player.start();
  }

  @override
  Future<void> writeAudioSample(Uint8List sample) async {
    _player.writeChunk(sample);
  }

  @override
  Future<void> stopPlay() async {
    await _player.stop();
  }

  @override
  Future<void> close() async {
    await startRecord();
    await stopPlay();

    _recorder.dispose();
    _player.dispose();
  }
}
