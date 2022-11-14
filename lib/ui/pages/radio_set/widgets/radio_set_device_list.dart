import 'package:flutter/material.dart';
import 'package:radio_set/model/device_model.dart';
import 'package:radio_set/ui/pages/radio_set/widgets/radio_set_indicator.dart';

class RadioSetDeviceList extends StatelessWidget {
  final List<DeviceModel> devices;

  const RadioSetDeviceList({
    super.key,
    required this.devices,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          if (devices.isNotEmpty)
            const Text(
              'Устройства в эфире',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: devices
                  .map(
                    (device) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RadioSetIndicator(
                          isOn: device.isTransmitting,
                          color: Colors.green,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: device.isTransmitting ? Colors.green : Colors.red,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          device.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
