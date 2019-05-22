import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/io_2019/models/model.dart';
import 'package:provider/provider.dart';


class MyIO2019StudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      builder: (context) => AppState(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        title: 'vegitable tracker',
        home: AdaptiveMainScreen(),
      ),
    );
  }
}
class AdaptiveMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LogScreen();
  }
}

class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vegitable log app "),
      ),
    );
  }
}












