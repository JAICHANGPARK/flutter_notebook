import 'package:flutter/material.dart';

class MyPageRoute extends MaterialPageRoute {
  final Duration transDuation;

  MyPageRoute({
    this.transDuation = const Duration(milliseconds: 1000),
    WidgetBuilder builder,
    RouteSettings settings,
  });

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => transDuation;
}
