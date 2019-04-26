
import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/model/forum.dart';
import 'package:flutter_notebook/video_game_app/styles/coclors.dart';

class ForumNameWidget extends StatelessWidget {
  final Forum forum;

  ForumNameWidget({this.forum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      elevation: 20.0,
    );
  }
}
