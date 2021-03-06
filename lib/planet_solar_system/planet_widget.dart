import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_notebook/planet_solar_system/model/planet.dart';

class PlanetWidget extends StatefulWidget {
  final Planet planet;
  final bool currentlyInMainPos;

  const PlanetWidget({this.planet, this.currentlyInMainPos = false});

  @override
  _PlanetWidgetState createState() => _PlanetWidgetState();
}

class _PlanetWidgetState extends State<PlanetWidget>
    with TickerProviderStateMixin {
  final double constDiameter = 25.0;
  final double moonOrbitRadius = 20.0;
  AnimationController _rotationController;
  AnimationController _moonOrbitLengthController;
  Animation<double> _moonOrbitLength;

  bool get hasMoons => widget.planet.moons.length != 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _rotationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    if (hasMoons) {
      _rotationController.repeat();
    }
    _moonOrbitLengthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700))
          ..addListener(() {
            setState(() {});
          });
    _moonOrbitLength = Tween<double>(begin: 0.0, end: moonOrbitRadius)
        .animate(_moonOrbitLengthController);
    _moonOrbitLengthController.forward();
  }

  Widget _buildCelestialBody({@required CelestialBody body}) {
    return Center(
      child: Container(
        width: body.diameter * constDiameter,
        height: body.diameter * constDiameter,
        decoration: BoxDecoration(color: body.color, shape: BoxShape.circle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Planet planet = widget.planet;
    final List<Moon> moons = planet.moons;
    final List<Widget> bodies = [_buildCelestialBody(body: planet)];

    if (moons.length > 0 && widget.currentlyInMainPos) {
      for (int i = 0; i < moons.length; i++) {
        final double radians = (2 * pi / moons.length) * i;
        final double dx = _moonOrbitLength.value * cos(radians);
        final double dy = _moonOrbitLength.value * sin(radians);
        bodies.add(Transform.translate(
          offset: Offset(dx, dy),
          child: _buildCelestialBody(body: moons[i]),
        ));
      }
    }

    return RotationTransition(
      turns: _rotationController,
      child: Container(
        width: 100.0,
        height: 100,
        child: Stack(
          overflow: Overflow.visible,
          children: bodies,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _rotationController.dispose();
    super.dispose();
  }
}
