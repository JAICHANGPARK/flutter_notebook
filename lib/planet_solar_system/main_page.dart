import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/planet_solar_system/astronaut.dart';
import 'package:flutter_notebook/planet_solar_system/model/planet.dart';
import 'package:flutter_notebook/planet_solar_system/planet_name.dart';
import 'package:flutter_notebook/planet_solar_system/planet_selector.dart';

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
  final StreamController  _navigationStreamCntrllr = StreamController.broadcast();

  _handleArrowClick(ClickDirection direction) {
    setState(() {
      switch (direction) {
        case ClickDirection.Left:
          _currentPlanetIndex--;
          break;
        case ClickDirection.Right:
          // TODO: Handle this case.
          _currentPlanetIndex++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionalTranslation(
              translation: Offset(0.0, 0.65),
              child: PlanetSelector(
                screenSize: screenSize,
                planets: _planets,
                currentPlanetIndex: _currentPlanetIndex,
                onArrowClick: _handleArrowClick,
                onPlanetClicked: () => _navigationStreamCntrllr.sink.add(null),
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
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      width: 400.0,
                      padding: EdgeInsets.only(left: 50.0),
                      child: PlanetName(
                        name: _planets[_currentPlanetIndex].name.toUpperCase(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Astronaut(
                    size: screenSize,
                    planets: _planets,
                    currentPlanetIndex: _currentPlanetIndex,
                    shouldNavigate: _navigationStreamCntrllr.stream,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _navigationStreamCntrllr.close();
    super.dispose();
  }
}
