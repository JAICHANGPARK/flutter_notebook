import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/model/forum.dart';
import 'package:flutter_notebook/video_game_app/styles/text_styles.dart';


class ForumDetailsWidget extends StatelessWidget {
  final Forum forum;
  ForumDetailsWidget({this.forum});



  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        height: 180.0,
        padding: const EdgeInsets.only(
          left: 20, right: 20, top: 24, bottom: 12
        ),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    child: Center(
                      child: Text(forum.rank,
                      style: rankStyle,),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.4),
                        width: 2
                      )
                    ),
                  ),
                  Text("new", style: labelTextStyle,),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LabelValueWidget(
                  value: forum.topics.length.toString(),
                  label: "topics",
                  labelStyle: labelTextStyle,
                  valueStyle: valueTextStyle,
                ),
                LabelValueWidget(
                  value: forum.threads,
                  label: "threads",
                  labelStyle: labelTextStyle,
                  valueStyle: valueTextStyle,
                ),
                LabelValueWidget(
                  value: forum.subs,
                  label: "subs",
                  labelStyle: labelTextStyle,
                  valueStyle: valueTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LabelValueWidget extends StatelessWidget {
  final String label, value;
  final TextStyle labelStyle, valueStyle;

  LabelValueWidget({this.label, this.value, this.labelStyle, this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(value, style: valueStyle,),
        Text(label, style: labelStyle,)
      ],
    );
  }
}


class MyCustomClipper extends CustomClipper<Path> {
  final double distanceFromWall = 12;
  final double controlPointDistanceFromWall = 2;

  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final double height = size.height;
    final double halfHeight = size.height * 0.5;
    final double width = size.width;
    Path clippedPath = Path();
    clippedPath.moveTo(0, halfHeight);
    clippedPath.lineTo(0, height - distanceFromWall);
    clippedPath.quadraticBezierTo(0 + controlPointDistanceFromWall ,
        height - controlPointDistanceFromWall,
        0 + distanceFromWall, height);
    clippedPath.lineTo(width, height);
    clippedPath.lineTo(width, 0 + 30.0);
    clippedPath.quadraticBezierTo(width - 5, 0+5.0, width - 35, 15);
    clippedPath.close();
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}












