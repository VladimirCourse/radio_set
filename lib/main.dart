import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_set/bloc/radio_set/radio_set_bloc.dart';
import 'package:radio_set/repository/audio/audio_repository.dart';
import 'package:radio_set/repository/audio/sound_stream_audio_repository.dart';
import 'package:radio_set/repository/transmit/nearby_transmit_repository.dart';
import 'package:radio_set/repository/transmit/transmit_repository.dart';
import 'package:radio_set/ui/pages/radio_set/radio_set_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<AudioRepository>(
          create: (_) => SoundStreamAudioRepository(),
          dispose: (_, repository) => repository.close(),
        ),
        Provider<TransmitRepository>(
          lazy: false,
          create: (_) => NearbyTransmitRepository(),
          dispose: (_, repository) => repository.close(),
        ),
      ],
      child: MaterialApp(
        title: 'Radio Set',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => RadioSetBloc(
            transmitRepository: context.read(),
            audioRepository: context.read(),
          ),
          child: const RadioSetPage(),
        ),
      ),
    );
  }
}
