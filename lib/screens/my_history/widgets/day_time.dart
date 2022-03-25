import 'package:flutter/material.dart';

class TimeDate extends StatelessWidget {
  const TimeDate({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
