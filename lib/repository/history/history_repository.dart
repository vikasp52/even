import 'dart:convert';

import 'package:even/repository/history/model/history.dart';
import 'package:flutter/services.dart';

class HistoryRepository {
  Future<List<History>> getHistory() async {
    final response = await rootBundle.loadString('assets/history.json');
    final data = await json.decode(response).cast<Map<String, dynamic>>();
    var historyList =
        data.map<History>((json) => History.fromJson(json)).toList();

    if (historyList != null || historyList != []) {
      return historyList;
    }
    return [];
  }
}
