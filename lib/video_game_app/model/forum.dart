import 'package:flutter_notebook/video_game_app/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;

  Forum(
      {this.title,
      this.imagePath,
      this.rank,
      this.topics,
      this.threads,
      this.subs});
}

final fortniteForum = Forum(
    title: "Fortnite",
    imagePath: "https://github.com/TechieBlossom/video_game_messaging_app/blob/part2/assets/images/fortnite.jpg?raw=true",
    rank: "31",
    threads: "93",
    subs: "1k+",
    topics: fortniteTopics);

final pubgForum = Forum(
    title: "PUBG",
    imagePath: "https://github.com/TechieBlossom/video_game_messaging_app/blob/part2/assets/images/pubg.png?raw=true",
    rank: "25",
    threads: "120",
    subs: "1000+",
    topics: pubgTopics);


final forums = [fortniteForum, pubgForum];
















