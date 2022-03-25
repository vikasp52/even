import 'package:flutter/material.dart';

class TextFieldForm extends StatefulWidget {
  const TextFieldForm({
    Key? key,
    required this.hintText,
    required this.label,
  }) : super(key: key);

  final String hintText;
  final String label;

  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  String? label;

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Focus(
        onFocusChange: (focus) {
          setState(() {
            if (focus) {
              label = widget.label;
            } else {
              label = widget.hintText;
            }
          });
        },
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            label: Text(
              label ?? widget.hintText,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
