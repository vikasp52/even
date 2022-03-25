import 'package:flutter/material.dart';

class AddConsultation extends StatelessWidget {
  const AddConsultation({
    required this.globalKey,
    required this.onPressed,
  });

  final VoidCallback? onPressed;
  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shape: const CircleBorder(),
          color: const Color(0xffa7bff6),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RawMaterialButton(
              key: globalKey,
              onPressed: onPressed,
              elevation: 2.0,
              fillColor: const Color(0xff004cff),
              child: const Icon(
                Icons.add,
                size: 30.0,
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(10.0),
              shape: const CircleBorder(),
            ),
          ),
        ),
        const Text(
          'Add consultation',
          style: TextStyle(
              color: Color(0xff004cff),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        )
      ],
    );
  }
}
