import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    title: const Text(
      'My History',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    elevation: 0.0,
    backgroundColor: const Color(0xffe9ecf4),
    centerTitle: true,
  );
}
