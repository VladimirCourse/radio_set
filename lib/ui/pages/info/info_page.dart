import 'package:flutter/material.dart';
import 'package:nearby_connections/nearby_connections.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({
    super.key,
  });

  void _askPermissions() {
    final nearby = Nearby();

    nearby.askBluetoothPermission();
    nearby.askLocationPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Для поддержания чистоты эфира, максимальная длительность передачи составляет 7 секунд.',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Если отсутствует звук, пожалуйста, выключите беззвучный или вибро режим.',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Если возникли неполадки, пожалуйста, проверьте, что Bluetooth, WIFI и GPS включены, а приложение получило все необходимые разрешения и попробуйте снова. Попробуйте выключить и включить эфир снова на всех устройствах.',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Во избежание травм слухового аппарата, не подносите телефоны с включенным микрофоном близко.',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: _askPermissions,
                    child: const Text(
                      'Запросить разрешения',
                      style: TextStyle(fontSize: 14, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
