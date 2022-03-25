import 'package:even/repository/history/model/history.dart';
import 'package:even/screens/my_history/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConsultationList extends StatelessWidget {
  const ConsultationList({
    Key? key,
    required this.historyList,
  }) : super(key: key);

  final List<History> historyList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: historyList.length,
        itemBuilder: (context, index) {
          final History history = historyList[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                TimeDate(
                  date: history.day,
                  time: history.time,
                ),
                const SizedBox(
                  width: 10,
                ),
                DetailsCard(
                  history: history,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
