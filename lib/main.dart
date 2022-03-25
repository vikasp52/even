import 'package:even/repository/history/history_repository.dart';
import 'package:even/screens/my_history/cubit/history_cubit.dart';
import 'package:even/screens/my_history/my_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Even',
      home: BlocProvider(
        create: (bloc) => HistoryCubit(
          historyRepository: HistoryRepository(),
        ),
        child: const MyHistory(),
      ),
    );
  }
}
