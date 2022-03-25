import 'package:even/common_widgets/app_bar_title.dart';
import 'package:even/screens/tele_consultation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TeleConsultation extends StatelessWidget {
  const TeleConsultation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(
          0xffc5cad5,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CustomAppBarTitle(
                title: 'Enter details',
              ),
              Tabs(),
              DetailsForm(),
            ],
          ),
        ));
  }
}
