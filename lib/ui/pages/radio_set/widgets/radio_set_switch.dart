import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_set/ui/pages/radio_set/widgets/radio_set_indicator.dart';

class RadioSetSwitch extends StatelessWidget {
  final bool isTransmitting;
  final bool isLoading;
  final ValueChanged<bool> onChanged;

  const RadioSetSwitch({
    super.key,
    required this.isTransmitting,
    required this.isLoading,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RadioSetIndicator(
          isOn: isTransmitting && !isLoading,
          color: Colors.green,
          child: Transform.scale(
            scale: 2.0,
            child: CupertinoSwitch(
              value: isTransmitting,
              trackColor: Colors.red,
              activeColor: isLoading ? Colors.yellow : Colors.green,
              onChanged: onChanged,
            ),
          ),
        ),
        const SizedBox(height: 34),
        Text(
          isLoading
              ? 'Подключаемся...'
              : isTransmitting
                  ? 'В эфире'
                  : 'Не в эфире',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
