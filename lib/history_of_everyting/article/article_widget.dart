

import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';


class ArticleWidget extends StatefulWidget {
  final TimelineEntry article;

  ArticleWidget({this.article, Key key}) : super(key : key);

  @override
  _ArticleWidgetState createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
