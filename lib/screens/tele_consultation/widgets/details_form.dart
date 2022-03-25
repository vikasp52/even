import 'package:even/common_widgets/upload_docs_button.dart';
import 'package:even/screens/tele_consultation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFieldForm(
            label: 'Hospital name',
            hintText: ' Enter Hospital/Clinic name',
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'CONSULTATION DETAILS',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextFieldForm(
            label: 'Doctor name',
            hintText: ' Enter Doctor name',
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            color: const Color(0xffa7bff6),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Choose Date & Time',
              style: TextStyle(
                color: Color(0xff004cff),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Divider(
            color: Colors.black,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'INVOICE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const UploadDocsButton(),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.black,
          ),
          const TextFieldForm(
            label: 'Feedback',
            hintText: ' Enter Feedback',
          ),
        ],
      ),
    );
  }
}
