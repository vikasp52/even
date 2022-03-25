import 'package:even/screens/menu/menu_bar.dart';
import 'package:even/screens/my_history/animation/ripple_page_transition.dart';
import 'package:even/screens/my_history/cubit/history_cubit.dart';
import 'package:even/screens/my_history/cubit/history_state.dart';
import 'package:even/screens/my_history/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({Key? key}) : super(key: key);

  @override
  State<MyHistory> createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  static final GlobalKey _addConsultationButtonKey = GlobalKey();
  late RipplePageTransition _ripplePageTransition;

  @override
  void initState() {
    _ripplePageTransition = RipplePageTransition(
      widgetKey: _addConsultationButtonKey,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color(0xffe9ecf4),
          appBar: appBar(),
          body: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) {
              if (state is LoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is LoadedState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddConsultation(
                      onPressed: () => _ripplePageTransition.navigateTo(
                        const MenuBar(),
                      ),
                      globalKey: _addConsultationButtonKey,
                    ),
                    const SizedBox(height: 20),
                    ConsultationList(
                      historyList: state.historyData,
                    ),
                  ],
                );
              } else if (state is ErrorState) {
                return Center(
                  child: Text(state.errorMessage),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
        _ripplePageTransition,
      ],
    );
  }
}
