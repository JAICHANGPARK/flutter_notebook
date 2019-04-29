import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 85,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Container(
            color: Colors.pink,
          ),
        ),
        SizedBox(
          height: 85,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'ALARM TIME',
                  style: TextStyle(
                      color: Color(0xffff0863),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "10:23 PM",
                  style: TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "WAKE UP IN",
                  style: TextStyle(
                    color: Color(0xffff0863),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.3
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "07:23 AM",
                  style: TextStyle(
                      color: Color(0xff2d386b),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}














