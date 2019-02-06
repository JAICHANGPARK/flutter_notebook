import 'package:flutter/material.dart';

class StoryLine extends StatelessWidget {
  final String storyline;

  StoryLine(this.storyline);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Story line',
          style: textTheme.subhead.copyWith(fontSize: 18.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          storyline,
          style: textTheme.body1.copyWith(
            color: Colors.black45,
            fontSize: 16.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'more',
              style: textTheme.body1
                  .copyWith(fontSize: 16.0, color: theme.accentColor),
            ),
            Icon(Icons.keyboard_arrow_down,
            size: 18.0,
            color: theme.accentColor,)
          ],
        )
      ],
    );
  }
}
