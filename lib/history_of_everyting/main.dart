

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
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Text("User Request History Of Everything",
          style: TextStyle(fontSize: 32),),
          Text("DoList 2019.04.04", style: TextStyle(fontSize: 32),),
          Text("1.",
            style: TextStyle(fontSize: 32),),
          Divider(height: 20, color: Colors.black,),
          Text("Todo List",
            style: TextStyle(fontSize: 32),),
          Text("-----\nDependency \n",
            style: TextStyle(fontSize: 32),),
          Text("1. Create Main menu Widget",
            style: TextStyle(fontSize: 32),
          ),
          Text("2. Create Main menu Widget",
            style: TextStyle(fontSize: 32),
          ),

        ],
      ),
    ),
    );
  }
}








