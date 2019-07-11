import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/planet_solar_system/model/planet.dart';

class Astronaut extends StatefulWidget {
  final Size size;
  final List<Planet> planets;
  final int currentPlanetIndex;
  final Stream shouldNavigate;

  Astronaut(
      {this.size, this.planets, this.currentPlanetIndex, this.shouldNavigate});

  @override
  _AstronautState createState() => _AstronautState();
}

class _AstronautState extends State<Astronaut> with TickerProviderStateMixin {
  AnimationController _smokeAnimController;
  AnimationController _scaleAnimController;
  AnimationController _floatingAnimController;
  Animation<Offset> _floaingAnim;
  TabController _tabController;
  StreamSubscription _navigationSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _smokeAnimController =
        AnimationController(vsync: this, duration: Duration(seconds: 35));

    _floatingAnimController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1700))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _floatingAnimController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _floatingAnimController.forward();
            }
          });
    _floaingAnim = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 0.025))
        .animate(_floatingAnimController);
    _smokeAnimController.repeat();

    _tabController = TabController(
        length: widget.planets.length,
        vsync: this,
        initialIndex: widget.currentPlanetIndex);

    _navigationSubscription = widget.shouldNavigate.listen((_) async {
      //TODO Implement Custom Router
    });
    _scaleAnimController = AnimationController(
        vsync: this,
        lowerBound: 1.0,
        upperBound: 7.0,
        duration: Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
