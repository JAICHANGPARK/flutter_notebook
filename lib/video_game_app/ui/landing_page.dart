

import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/ui/app_background.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground()
        ],
      ),
    );
  }
}
