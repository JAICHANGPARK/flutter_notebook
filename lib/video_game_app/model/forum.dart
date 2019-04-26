

import 'package:flutter_notebook/video_game_app/model/topic.dart';

class Forum{
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;

  Forum(this.title, this.imagePath, this.rank, this.topics, this.threads,
      this.subs);


}