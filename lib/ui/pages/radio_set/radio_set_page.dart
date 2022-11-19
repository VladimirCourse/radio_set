import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:radio_set/bloc/radio_set/radio_set_bloc.dart';
import 'package:radio_set/ui/pages/info/info_page.dart';
import 'package:radio_set/ui/pages/radio_set/widgets/radio_set_device_list.dart';
import 'package:radio_set/ui/pages/radio_set/widgets/radio_set_switch.dart';
import 'package:sound_mode/sound_mode.dart';
import 'package:sound_mode/utils/ringer_mode_statuses.dart';

class RadioSetPage extends StatefulWidget {
  const RadioSetPage({super.key});

  @override
  State<RadioSetPage> createState() => _RadioSetPageState();
}

class _RadioSetPageState extends State<RadioSetPage> {
  @override
  void initState() {
    super.initState();

    _askPermissions();
    _checkSilentMode();
  }

  Future<void> _askPermissions() async {
    try {
      await [
        Permission.bluetooth,
        Permission.bluetoothAdvertise,
        Permission.bluetoothConnect,
        Permission.bluetoothScan,
        Permission.microphone,
        Permission.location,
        Permission.nearbyWifiDevices,
      ].request();
    } catch (ex) {
      _showError();
    }
  }

  Future<void> _checkSilentMode() async {
    try {
      final ringerStatus = await SoundMode.ringerModeStatus;
      if (ringerStatus != RingerModeStatus.normal) {
        _showError(error: 'Пожалуйста, выключите вибро или тихий режим');
      }
    } catch (ex) {}
  }

  void _startTransmit() {
    context.read<RadioSetBloc>().add(RadioSetEvent.startTransmit(onError: _showError));
  }

  void _stopTransmit() {
    context.read<RadioSetBloc>().add(const RadioSetEvent.stopTransmit());
  }

  void _startRecord() {
    context.read<RadioSetBloc>().add(RadioSetEvent.startRecord(onError: _showError));
  }

  void _stopRecord() {
    context.read<RadioSetBloc>().add(const RadioSetEvent.stopRecord());
  }

  void _showError({String? error}) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 5),
      content: Text(
        error ??
            'Ошибочка:( Пожалуйста, проверьте, что BT, WIFI и GPS включены, а приложение получило все необходимые разрешения и попробуйте снова',
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showInfo() {
    showModalBottomSheet(
      context: context,
      builder: (_) => const InfoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: _showInfo,
              icon: const Icon(Icons.question_mark),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => RadioSetDeviceList(devices: state.devices),
              ),
              const SizedBox(height: 20),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => RadioSetSwitch(
                  isLoading: state.isLoading,
                  isTransmitting: state.isTransmitting,
                  onChanged: (value) => value ? _startTransmit() : _stopTransmit(),
                ),
              ),
              const SizedBox(height: 50),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => Text(
                  'Ваш позывной ${state.name}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => GestureDetector(
                  onTapDown: (_) => _startRecord(),
                  onTapUp: (_) => _stopRecord(),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: state.isRecording ? Colors.green : Colors.red,
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Зажмите и говорите',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
