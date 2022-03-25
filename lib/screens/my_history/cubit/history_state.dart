import 'package:even/repository/history/model/history.dart';

abstract class HistoryState {}

class LoadingState extends HistoryState {}

class LoadedState extends HistoryState {
  LoadedState({
    required this.historyData,
  });

  final List<History> historyData;
}

class NoHistoryState extends HistoryState {
  NoHistoryState(this.errorMessage);

  final String errorMessage;
}

class ErrorState extends HistoryState {
  ErrorState(this.errorMessage);

  final String errorMessage;
}
