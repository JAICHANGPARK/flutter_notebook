


import 'package:flutter/material.dart';


class MainBookStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "Story",
            style: Theme.of(context)
                .textTheme
                .subhead
                .copyWith(fontSize: 18.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, "
                "quis nostrud exercitation ullamco laboris nisi ut aliquip ex "
                "ea commodo consequat. ",
            style: Theme.of(context)
                .textTheme
                .body1
                .copyWith(color: Colors.black45, fontSize: 16.0),
            textAlign: TextAlign.end,
            textScaleFactor: 1.2,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "More",
            style: Theme.of(context)
                .textTheme
                .body1
                .copyWith(color: Colors.cyan, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
