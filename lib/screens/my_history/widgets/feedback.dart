import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({
    Key? key,
    required this.feedback,
  }) : super(key: key);

  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffeff2f8),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Feedback',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Text('Edit',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff004cff),
                    )),
              ],
            ),
            const SizedBox(height: 6),
            Text(feedback,
                style: const TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.w600,
                  color: Colors.black54,
                )),
          ],
        ),
      ),
    );
  }
}
