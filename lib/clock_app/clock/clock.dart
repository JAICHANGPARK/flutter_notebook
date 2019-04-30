import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/clock_app/clock/clock_dial_painter.dart';
import 'package:flutter_notebook/clock_app/clock/clock_face.dart';
import 'package:flutter_notebook/clock_app/clock/clock_text.dart';

typedef TimeProducer = DateTime Function();

class Clock extends StatefulWidget {
  final Color circleColor;
  final Color shadowColor;
  final ClockText clockText;
  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  Clock({this.circleColor = const Color(0xfffe1ecf7),
    this.shadowColor = const Color(0xffd9e2ed),
    this.clockText = ClockText.arabic,
    this.getCurrentTime = getSystemTime,
    this.updateDuration = const Duration(seconds: 1)
  });

  static DateTime getSystemTime(){
    return new DateTime.now();
  }

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  Timer _timer;
  DateTime dateTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = new DateTime.now();
    this._timer = new Timer.periodic(widget.updateDuration, setTime);
  }

  void setTime(Timer timer){
    setState(() {
      dateTime = new DateTime.now();
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: buildClockCircle(context),
    );
  }
  Container buildClockCircle(BuildContext context){
    return new Container(
      width: double.infinity,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        boxShadow: [
          new BoxShadow(
            offset: new Offset(0.0, 5.0),
            blurRadius: 0.0,
            color: widget.shadowColor
          ),
          new BoxShadow(
              offset: new Offset(0.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: -8,
              color: widget.circleColor
          )
        ]
      ),
      child: Stack(
        children: <Widget>[
          ClockFace(
            clockText: widget.clockText,
            dateTime: dateTime,
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            child: CustomPaint(
              painter: new ClockDialPainter(
                clockText : widget.clockText
              ),
            ),
          )
        ],
      ),
    );
  }
}

















