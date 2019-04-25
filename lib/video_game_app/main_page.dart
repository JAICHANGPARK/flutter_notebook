import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/ui/landing_page.dart';

class VideoGameAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: LandingPage()
    );
  }
}


