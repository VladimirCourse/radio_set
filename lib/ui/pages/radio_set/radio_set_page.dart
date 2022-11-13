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
    context.read<RadioSetBloc>().add(RadioSetEvent.startTransmit());
  }

  void _stopTransmit() {
    context.read<RadioSetBloc>().add(RadioSetEvent.stopTransmit());
  }

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
                        // inactiveTrackColor: Colors.grey,
                        onChanged: (value) => value ? _startTransmit() : _stopTransmit(),
                      ),
                    ),
                    const SizedBox(height: 34),
                    Text(
                      state.isLoading
                          ? 'Подключаемся...'
                          : state.isTransmitting
                              ? 'Идет передача'
                              : 'Не в сети',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
