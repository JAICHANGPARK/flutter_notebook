

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/history_of_everyting/bloc_provider.dart';
import 'package:flutter_notebook/history_of_everyting/main_menu/main_menu.dart';
import 'package:flutter_notebook/history_of_everyting/utils/colors.dart';


class HistoryOfEverything extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return BlocProvider(
      child: MaterialApp(
        title: 'History Of Everything',
        theme: ThemeData(
          backgroundColor: background,
          scaffoldBackgroundColor: background,
        ),
        home: MenuPage(),
      ),
      platform: Theme.of(context).platform,
    );


  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: MainMenuWidget(),
//    body: Center(
//      child: ListView(
//        scrollDirection: Axis.vertical,
//        padding: EdgeInsets.all(16),
//        children: <Widget>[
//          Text("User Request History Of Everything (Part5)",
//          style: TextStyle(fontSize: 32),),
//          Text("DoList 2019.04.05", style: TextStyle(fontSize: 32),),
//          Text("1.Imported Assets",
//            style: TextStyle(fontSize: 32),),
//          Divider(height: 20, color: Colors.black,),
//          Text("Todo List",
//            style: TextStyle(fontSize: 32),),
//          Text("-----\nDependency \n",
//            style: TextStyle(fontSize: 32),),
//          Text("1. Create Main menu Widget",
//            style: TextStyle(fontSize: 32),
//          ),
//
//        ],
//      ),
//    ),
    );
  }
}








