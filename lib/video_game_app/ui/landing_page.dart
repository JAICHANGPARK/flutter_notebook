

import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/ui/app_background.dart';
import 'package:flutter_notebook/video_game_app/ui/horizontal_tab_layour.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          )
        ],
      ),
    );
  }
}
