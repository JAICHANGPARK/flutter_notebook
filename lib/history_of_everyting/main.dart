

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
          Text("DoList 2019.04.03", style: TextStyle(fontSize: 32),),
          Text("1.",
            style: TextStyle(fontSize: 32),),
          Divider(height: 20, color: Colors.black,),
          Text("Todo List",
            style: TextStyle(fontSize: 32),),
          Text("-----\nDependency \n",
            style: TextStyle(fontSize: 32),),
          Text("1. BLoC Pattern",
            style: TextStyle(fontSize: 32),),
          Text("2. Timeline Code line 1375...",
            style: TextStyle(fontSize: 32),),
          Text("3. Create Tick Code",
            style: TextStyle(fontSize: 32),
          ),
          Text("4. Create timeline Render Wiget ",
            style: TextStyle(fontSize: 32),
          ),
          Text("5. Create timeline Widget Wiget ",
            style: TextStyle(fontSize: 32),
          )

        ],
      ),
    ),
    );
  }
}








