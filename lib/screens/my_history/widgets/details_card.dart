import 'package:even/common_widgets/upload_docs_button.dart';
import 'package:even/repository/history/model/history.dart';
import 'package:even/screens/my_history/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key? key,
    required this.history,
  }) : super(key: key);

  final History history;

  Widget roundedImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          height: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        history.serviceType,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            decorationThickness: 5,
                            fontSize: 10,
                            decorationColor: Colors.yellow,
                            decoration: TextDecoration.underline),
                      ),
                      Image.asset(
                        history.hospitalImage,
                        height: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    history.name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  history.recommendedBy != null
                      ? Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: 'Recommended by ',
                              style:
                                  DefaultTextStyle.of(context).style.copyWith(
                                        fontSize: 12,
                                      ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: history.recommendedBy,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Text(
                    history.address,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: history.documents
                        .map(
                          (e) => roundedImage(
                            e,
                          ),
                        )
                        .toList(),
                  ),
                  const UploadDocsButton(),
                ],
              ),
            ),
            FeedBack(
              feedback: history.feedback,
            ),
          ],
        ),
      ),
    );
  }
}
