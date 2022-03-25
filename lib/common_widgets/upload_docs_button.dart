import 'package:flutter/material.dart';

class UploadDocsButton extends StatelessWidget {
  const UploadDocsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xff004cff),
        ),
        minimumSize: MaterialStateProperty.all<Size>(const Size(0, 0)),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          'UPLOAD DOCS',
          style: TextStyle(fontSize: 10),
        ),
      ),
      onPressed: () {},
    );
  }
}
