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
    final double size = widget.size.width * 0.86;
    return SlideTransition(
      position: _floaingAnim,
      child: ScaleTransition(
        scale: _scaleAnimController,
        child: Container(
          width: size,
          height: size,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/spacesuit.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: size * 0.2,
                left: size * 0.24,
                child: Container(
                  width: size * 0.5,
                  height: size * 0.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 0.8],
                          colors: [Colors.transparent, Colors.black])),
                  child: ClipOval(
                    child: TabBarView(
                        controller: _tabController,
                        children: widget.planets.map((p) {
                          //TODO Implement Planet View Page
                          return PlanetViewImg(
                            p.imgAssetPath,
                            planetName: p.name,
                          );
                        }).toList()),
                  ),
                ),
              ),
              Positioned(
                bottom: -size * 0.6,
                child: RotationTransition(
                  turns: _smokeAnimController,
                  child: Image.asset(
                    'assets/spacesmoke.png',
                    fit: BoxFit.cover,
                    color: Colors.white,
                    width: size,
                    height: size,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(Astronaut oldWidget) {
    if (widget.currentPlanetIndex != oldWidget.currentPlanetIndex) {
      _tabController.animateTo(widget.currentPlanetIndex);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _smokeAnimController.dispose();
    _floatingAnimController.dispose();
    _tabController.dispose();
    _navigationSubscription.cancel();
    super.dispose();
  }
}

class PlanetViewImg extends StatelessWidget {
  final String planetName;
  final String imgAssetPath;

  const PlanetViewImg(
    this.imgAssetPath, {
    this.planetName,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '$planetName',
      flightShuttleBuilder: (BuildContext flightContext,
          Animation<double> animation,
          HeroFlightDirection flightDirection,
          BuildContext fromHeroContext,
          BuildContext toHeroContext) {
        if (flightDirection == HeroFlightDirection.pop) {
          return Container();
        } else if (flightDirection == HeroFlightDirection.push) {
          return toHeroContext.widget;
        }
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          imgAssetPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
