import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_set/bloc/radio_set/radio_set_bloc.dart';

class RadioSetPage extends StatefulWidget {
  const RadioSetPage({super.key});

  @override
  State<RadioSetPage> createState() => _RadioSetPageState();
}

class _RadioSetPageState extends State<RadioSetPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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

  void _showError() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => Column(
                  children: state.devices
                      .map(
                        (e) => Text(
                          '${e.id} ${e.name}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 40),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 2.0,
                      child: CupertinoSwitch(
                        value: state.isTransmitting,
                        trackColor: Colors.red,
                        activeColor: state.isLoading ? Colors.yellow : Colors.green,
                        onChanged: (value) => value ? _startTransmit() : _stopTransmit(),
                      ),
                    ),
                    const SizedBox(height: 34),
                    Text(
                      state.isLoading
                          ? 'Подключаемся...'
                          : state.isTransmitting
                              ? 'В эфире'
                              : 'Не в эфире',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BlocBuilder<RadioSetBloc, RadioSetState>(
                builder: (_, state) => Text(
                  'Ваш позывной ${state.name}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 40),
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
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
