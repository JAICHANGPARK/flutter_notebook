import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter_notebook/planet_solar_system/model/planet.dart';

enum ClickDirection { Left, Right }

class PlanetSelector extends StatefulWidget {
  final List<Planet> planets;
  final int currentPlanetIndex;
  final Function onArrowClick;
  final VoidCallback onPlanetClicked;
  final Size screenSize;

  PlanetSelector({
    this.planets,
    this.currentPlanetIndex,
    this.onArrowClick,
    this.onPlanetClicked,
    @required this.screenSize,
  });

  @override
  _PlanetSelectorState createState() => _PlanetSelectorState();
}

class _PlanetSelectorState extends State<PlanetSelector>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Tween<double> _rotationTween;

  double get _widgetHeight => widget.screenSize.height * 0.4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _rotationTween =
        Tween<double>(begin: 0.0, end: widget.currentPlanetIndex.toDouble());
    _controller.forward();
  }

  Widget _buildSelectorRing() {
    return Container(
      width: _widgetHeight,
      height: _widgetHeight,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300, width: 1.5)),
      child: FadeTransition(
        opacity: _controller,
        child: GestureDetector(
          onTap: () {
            widget.onPlanetClicked();
          },
          child: Container(
            padding: const EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 2.5))),
            child: Text(
              "${widget.planets[widget.currentPlanetIndex].name.toUpperCase()}",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeftArrowButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: FractionalTranslation(
        translation: Offset(1.0, -0.5),
        child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 35,
            ),
            onPressed: widget.currentPlanetIndex == 0
                ? null
                : () {
                    widget.onArrowClick(ClickDirection.Left);
                  }),
      ),
    );
  }

  Widget _buildRightArrowButton() {
    return Align(
      alignment: Alignment.topRight,
      child: FractionalTranslation(
        translation: Offset(-1.0, -0.5),
        child: IconButton(
            icon: Icon(
              Icons.chevron_right,
              size: 35,
            ),
            onPressed: widget.currentPlanetIndex == planets.length - 1
                ? null
                : () {
                    widget.onArrowClick(ClickDirection.Right);
                  }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> stackChildren = [
      _buildLeftArrowButton(),
      _buildSelectorRing(),
      _buildRightArrowButton(),
    ];

    for(int i = 0; i<widget.planets.length; i++){
      final double radialOffset = _widgetHeight / 2;
      final double radianDiff = (2 * pi) / planets.length;
      final double rotationFactor = _rotationTween.animate(_controller).value;
      final double startRadian = -pi / 2 + -rotationFactor * radianDiff;
      final double radians = startRadian + i * radianDiff;
      final double dx = radialOffset * cos(radians);
      final double dy = radialOffset * sin(radians);

      stackChildren.add(
        Transform.translate(offset:
        Offset(dx, dy),
        child: Placeholder(),)
      );
    }

    return Container(
      height: _widgetHeight,
      child: Stack(
        alignment: Alignment.center,
        children: stackChildren,
      ),
    );
  }

  @override
  void didUpdateWidget(PlanetSelector oldWidget) {
    if (widget.currentPlanetIndex != oldWidget.currentPlanetIndex) {
      _rotationTween = Tween<double>(
        begin: _rotationTween.evaluate(_controller),
        end: widget.currentPlanetIndex.toDouble(),
      );

      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  dispose() {
    super.dispose();
  }
}













