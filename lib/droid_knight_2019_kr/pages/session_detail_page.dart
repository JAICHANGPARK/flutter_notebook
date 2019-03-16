import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/model/track_schedule.dart';

class SessionDetailDialog extends ModalRoute<void> {
  final ScheduleModel sessionData;
  double avartarSize = 160.0;

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
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
          child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(27.0),
                child: IconButton(
                    icon: Image.asset('assets/img_droid_knights/ic_close.png'),
                    iconSize: 24,
                    onPressed: () => Navigator.pop(context)),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(27.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(4.0))),
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 16, bottom: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: sessionData,
                          child: Container(
                            height: avartarSize,
                            width: avartarSize,
                            constraints: BoxConstraints(),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1.0, 2.0),
                                    blurRadius: 2.0,
                                    spreadRadius: -1.0,
                                    color: Color(0x33000000)),
                                BoxShadow(
                                    offset: Offset(2.0, 1.0),
                                    blurRadius: 3.0,
                                    spreadRadius: 0.0,
                                    color: Color(0x24000000)),
                                BoxShadow(
                                    offset: Offset(3.0, 1.0),
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    color: Color(0x1F000000)),
                              ],
                              image: DecorationImage(
                                image: (sessionData.avatarUrl ?? '') == ''
                                    ? Image.asset(
                                            'assets/img_droid_knights/dk_profile.png')
                                        .image
                                    : NetworkImage(sessionData.avatarUrl ?? ''),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 32, right: 32, top: 16, bottom: 3.0),
                          child: Text(
                            sessionData.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                        Text(
                          sessionData.name,
                          style: TextStyle(
                              color: Color(0xffa5b495), fontSize: 16.0),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 13.0,
                          ),
                          child: Text(
                            sessionData.contents.toString(),
                            style: TextStyle(
                              color: Color(0xff4a4a4a),
                              fontSize: 12.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
