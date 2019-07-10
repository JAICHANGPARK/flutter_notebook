import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/planet_solar_system/model/planet.dart';
import 'package:flutter_notebook/planet_solar_system/planet_name.dart';

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
  final List<Planet> _planets = planets;
  int _currentPlanetIndex = 2;
  final StreamController _navigationStreamController =
      StreamController.broadcast();


  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionalTranslation(translation: Offset(0.0, 0.65),
            child: Container(
              //TODO Implement PlanetSelector
              child: Placeholder(),
            ),
            ),
          ),
          Container(
            height: screenSize.height * 0.8,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(quarterTurns: 1,
                  child: Container(
                    width: 400.0,
                    padding: EdgeInsets.only(left: 50.0),
                    //TODO Implement PlanetName
                    child: PlanetName(
                        name: _planets[_currentPlanetIndex].name.toUpperCase(),),
                  ),),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  //TODO Implement Astronaut
                  child: Placeholder(),
                )
              ],
            ),

          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _navigationStreamController.close();
    super.dispose();
  }
}





































