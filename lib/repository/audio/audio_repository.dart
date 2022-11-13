import 'dart:typed_data';

abstract class AudioRepository {
  bool get isRecording;

  Stream<Uint8List> get recordiingStream;

  Future<void> init();

  Future<void> startRecord();

  Future<void> stopRecord();

  Future<void> startPlay();

  Future<void> writeAudioSample(Uint8List sample);

  Future<void> stopPlay();

  Future<void> close();
}
