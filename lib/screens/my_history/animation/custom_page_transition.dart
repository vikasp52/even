import 'package:flutter/material.dart';

class CustomPageTransition extends PageRouteBuilder {
  CustomPageTransition({required this.page})
      : super(
          transitionDuration: const Duration(
            milliseconds: 200,
          ),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation secondaryAnimation,
          ) {
            return page;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );

  final Widget page;
}
