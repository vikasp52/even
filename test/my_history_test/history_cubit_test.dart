import 'package:bloc_test/bloc_test.dart';
import 'package:even/repository/history/history_repository.dart';
import 'package:even/repository/history/model/history.dart';
import 'package:even/screens/my_history/cubit/history_cubit.dart';
import 'package:even/screens/my_history/cubit/history_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHistoryRepository extends Mock implements HistoryRepository {}

main() {
  late HistoryRepository mockHistoryRepository;
  late HistoryCubit historyCubit;

  var history = const History(
    id: 1,
    serviceType: 'Consultant',
    name: 'Dr. Jordan Henderson',
    address: 'Aster RV - Multispeciality Hospital, JP Nagar Bangaluru',
    time: '05:35 PM',
    day: 'Today',
    feedback: 'Every interaction with the hospital was great!',
    documents: ["assets/document.png", "assets/document.png"],
    hospitalImage: 'assets/hospitalname.png',
  );

  var historyList = [history, history];

  setUp(() {
    mockHistoryRepository = MockHistoryRepository();

    historyCubit = HistoryCubit(
      historyRepository: mockHistoryRepository,
    );
  });

  tearDown(() {
    historyCubit.close();
  });

  blocTest(
    'Should emit [LoadingState, LoadedState] on history screen',
    build: () => historyCubit,
    act: (HistoryCubit cubit) {
      when(() => mockHistoryRepository.getHistory())
          .thenAnswer((_) async => historyList);
      cubit.getHistoryData();
    },
    expect: () => [
      isA<LoadingState>(),
      isA<LoadedState>(),
    ],
  );

  blocTest(
    'Should emit [LoadingState, NoHistoryState] when '
    'list is empty',
    build: () => historyCubit,
    act: (HistoryCubit cubit) {
      when(() => mockHistoryRepository.getHistory())
          .thenAnswer((_) async => []);

      cubit.getHistoryData();
    },
    expect: () => [
      isA<LoadingState>(),
      isA<NoHistoryState>(),
    ],
  );
}
