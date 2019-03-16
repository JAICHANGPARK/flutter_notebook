

import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/model/track_schedule.dart';


class SessionDetailDialog extends ModalRoute<void>{
  final ScheduleModel sessionData;

  SessionDetailDialog(this.sessionData);

  @override
  // TODO: implement barrierColor
  Color get barrierColor => Colors.black.withOpacity(0.7);

  @override
  // TODO: implement barrierDismissible
  bool get barrierDismissible => false;

  @override
  // TODO: implement barrierLabel
  String get barrierLabel => null;

  @override
  // TODO: implement maintainState
  bool get maintainState => true;

  @override
  // TODO: implement opaque
  bool get opaque => false;

  @override
  // TODO: implement transitionDuration
  Duration get transitionDuration => Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return null;
  }

}