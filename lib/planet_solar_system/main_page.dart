import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SolarSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentPlanetIndex = 2;
  final StreamController _navigationStreamController =
      StreamController.broadcast();


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _navigationStreamController.close();
    super.dispose();
  }
}





































