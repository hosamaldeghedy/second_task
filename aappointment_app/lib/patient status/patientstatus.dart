import 'package:flutter/material.dart';
enum AppointmentStatus { normal, done, cancelled }

class AppointmentTile extends StatelessWidget {
  final String name;
  final String time;
  final AppointmentStatus status;

  const AppointmentTile({
    super.key,
    required this.name,
    required this.time,
    this.status = AppointmentStatus.normal,
  });

  @override
  Widget build(BuildContext context) {
    Icon? statusIcon;

    if (status == AppointmentStatus.done) {
      statusIcon = const Icon(Icons.check, color: Colors.blue, size: 26);
    } else if (status == AppointmentStatus.cancelled) {
      statusIcon = const Icon(Icons.close, color: Colors.red, size: 26);
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6)
        ,
      ),

      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 16),
                    const SizedBox(width: 5),
                    Text(time),
                  ],
                ),
              ],
            ),
          ),

          if (statusIcon != null) statusIcon,
        ],
      ),
    );
  }
}
