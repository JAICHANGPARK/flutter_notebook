import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/clock_app/clock/hand_hour.dart';
import 'package:flutter_notebook/clock_app/clock/hand_minute.dart';
import 'package:flutter_notebook/clock_app/clock/hand_second.dart';

class ClockHands extends StatelessWidget {
  final DateTime dateTime;
  final bool showHourHandleHeartShape;

  ClockHands({this.dateTime, this.showHourHandleHeartShape = false});


  @override
  Widget build(BuildContext context) {
    return new AspectRatio(aspectRatio: 1.0,
      child:Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new CustomPaint(painter: HourHandPainter(
              hours: dateTime.hour,
              minutes : dateTime.minute
            ),),
            new CustomPaint(painter: MinuteHandPainter(
                minutes : dateTime.minute,
                seconds : dateTime.second
            ),),
            new CustomPaint(painter: SecondHandPainter(
                second : dateTime.second
            ),),
          ],
        ),
      ),);
  }
}
