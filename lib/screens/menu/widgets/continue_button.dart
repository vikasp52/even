import 'package:even/screens/tele_consultation/tele_consultation.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff004cff),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(
              double.maxFinite,
              40,
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                18.0,
              ),
            ),
          ),
        ),
        child: const Text(
          'Continue',
          style: TextStyle(fontSize: 15),
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const TeleConsultation(),
          ),
        ),
      ),
    );
  }
}
