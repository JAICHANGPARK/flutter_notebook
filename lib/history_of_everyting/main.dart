

import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';


class HistoryOfEverything extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'History Of Everything',
      theme: ThemeData(
        backgroundColor: background,
        scaffoldBackgroundColor: background,
      ),
      home: MenuPage(),
    );

  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History ~~"),
      ),
//      body: MainMenuWidget(),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("History Of Everything",
          style: TextStyle(fontSize: 32),),
          Text("Todo List",
            style: TextStyle(fontSize: 32),),
          Text("-----\nDependency \n",
            style: TextStyle(fontSize: 32),),
          Text("1. BLoC Pattern",
            style: TextStyle(fontSize: 32),),
          Text("2. Timeline ",
            style: TextStyle(fontSize: 32),),
          Text("3. ...?",
            style: TextStyle(fontSize: 32),
          )

        ],
      ),
    ),
    );
  }
}








