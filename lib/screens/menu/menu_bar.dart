import 'package:even/common_widgets/app_bar_title.dart';
import 'package:even/screens/menu/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<Offset>? listOffset;
  Animation<Offset>? titleOffset;
  Animation<Offset>? buttonOffset;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 700,
      ),
    );

    listOffset = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: Offset.zero,
    ).animate(controller!);

    titleOffset = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(controller!);

    buttonOffset = Tween<Offset>(
      begin: const Offset(0, 1.0),
      end: Offset.zero,
    ).animate(controller!);

    controller?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(
          0xffc5cad5,
        ),
        body: Column(
          children: [
            SlideTransition(
              position: titleOffset!,
              child: const CustomAppBarTitle(
                title: 'Choose type of service',
              ),
            ),
            Expanded(
              child: SlideTransition(
                position: listOffset!,
                child: const MenuList(),
              ),
            ),
            SlideTransition(
              position: buttonOffset!,
              child: const ContinueButton(),
            ),
          ],
        ));
  }
}
