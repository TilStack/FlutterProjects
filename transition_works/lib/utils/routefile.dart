import 'package:flutter/material.dart';

Route createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondayAnimation) => child,
    transitionsBuilder: (context, animation, secondaryanimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
