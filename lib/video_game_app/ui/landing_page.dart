import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/styles/coclors.dart';
import 'package:flutter_notebook/video_game_app/styles/text_styles.dart';
import 'package:flutter_notebook/video_game_app/ui/app_background.dart';
import 'package:flutter_notebook/video_game_app/ui/horizontal_tab_layour.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            AppBackground(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Material(
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.apps,
                          color: primaryColor,
                        ),
                      ),
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                HeadingSubHeadingWidget(),
                SizedBox(
                  height: 20,
                ),
                HorizontalTabLayout(),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 30.0),
                    child: Text(
                      "New Topic",
                      style: buttonStyle,
                    ),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40.0))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingSubHeadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Forum',
            style: headingStyle,
          ),
          Text(
            'Kick of the conversation',
            style: subHeadingStyle,
          )
        ],
      ),
    );
  }
}
