import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/planet_solar_system/model/planet.dart';

class Astronaut extends StatefulWidget {
  final Size size;
  final List<Planet> planets;
  final int currentPlanetIndex;
  final Stream shouldNavigate;


  Astronaut({this.size, this.planets, this.currentPlanetIndex,
    this.shouldNavigate});

  @override
  _AstronautState createState() => _AstronautState();
}

class _AstronautState extends State<Astronaut> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}













































