import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      child: ListView(
        children: [
          'Tele-Consultation',
          'Consultation',
          'Lab tests',
          'Diagnostics',
          'Health checkup',
        ]
            .map((e) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
