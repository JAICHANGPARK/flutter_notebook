import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/flight_demo_hero/model/ticket.dart';
import 'package:flutter_notebook/flight_demo_hero/theme.dart';
import 'package:flutter_notebook/flight_demo_hero/ticket_card_widget.dart';
import 'package:after_layout/after_layout.dart';
class TicketDetail extends StatefulWidget {
  final Ticket ticket;

  TicketDetail({this.ticket});

  @override
  _TicketDetailState createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail>
with AfterLayoutMixin<TicketDetail>{
  bool showCorner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: InkWell(
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Hero(
              tag: widget.ticket.id,
              child: TicketCardWidget(
                ticket: widget.ticket,
                showQR: false,
              ),
            ),
            Spacer(),
            Hero(
              tag: "qrcode",
              child: Stack(children: <Widget>[
                getCorners(),
                Image.asset(
                  "assets/img/qrcode.png",
                  width: 140.0,
                )
              ]),
            ),
            SizedBox(
              height: 80.0,
            ),
          ],
        ));
  }

  Widget getCorners() {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      left: showCorner ? 0 : 30,
      top: showCorner ? 0 : 30,
      width: showCorner ? 140 : 80,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: showCorner ? 140 : 80,
        height: showCorner ? 140 : 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Row(
              mainAxisSize: showCorner ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 0,
                  child: Image.asset("assets/img/corners.png", width: 25.0,),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset("assets/img/corners.png", width: 25.0,)
                )
              ],
            ),

            Spacer(),

            Row(
              mainAxisSize: showCorner ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 3,
                  child: Image.asset("assets/img/corners.png", width: 25.0,),
                ),
                RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset("assets/img/corners.png", width: 25.0,)
                )
              ],
            ),

          ],
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    startTimer();
  }

  startTimer(){
    var duration = Duration(milliseconds: 300);
    Timer(duration, showCorners);
  }

  showCorners(){
    setState(() {
      showCorner = true;
    });
  }



}































