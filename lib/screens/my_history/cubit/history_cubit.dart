import 'package:even/repository/history/history_repository.dart';
import 'package:even/repository/history/model/history.dart';
import 'package:even/screens/my_history/cubit/history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit({
    required this.historyRepository,
  }) : super(LoadingState()) {
    getHistoryData();
  }

  final HistoryRepository historyRepository;

  Future<void> getHistoryData() async {
    try {
      emit(LoadingState());

      final List<History> historyList = await historyRepository.getHistory();

      if (historyList.isEmpty) {
        return emit(NoHistoryState('There is nothing to show'));
      }

      emit(LoadedState(historyData: historyList));
    } catch (e) {
      print('Exception is : ${e.toString()}');
      emit(ErrorState('There is some issue in loading data'));
    }
  }
}
