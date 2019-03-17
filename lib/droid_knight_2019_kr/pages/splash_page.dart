import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/const/route.dart';

const NUM_OF_STARS = 30;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  List<Animation<double>> _animation;
  AnimationController _controller;
  List<Map<String, num>> _topAndLefts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Random random = new Random();
    _topAndLefts = new List<int>.generate(NUM_OF_STARS, (int i) => i)
        .map((int i) => random.nextInt(500))
        .map((int left) => left.toDouble())
        .map((double left) => [left, random.nextInt(1000)])
        .map((size) => {'left': size[0], 'top': size[1] / 3.5})
        .toList();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    Animation<double> animation1 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.2, 0.6)),
    );

    Animation<double> animation2 = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Interval(0.5, 1)),
    );
    _animation = [animation1, animation2];
    _controller.forward();

    Timer(Duration(milliseconds: 3000), () async {
      Navigator.pushReplacementNamed(context, Routes.HOME);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, widget) {
        return Scaffold(
          backgroundColor: Color(0xff143f5f),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  new Color(0xff000000),
                  new Color(0xff143F5F),
                  new Color(0xff143F5F),
                ])),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Opacity(
                  opacity: calculateAnimationValue(_animation[1], 0, 0.5),
                  child: Container(
                    height: 200,
                    child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                            ),
                          )
                        ]..addAll(_buildStars())),
                  ),
                ),
                Opacity(
                  child: Center(
                    child: Image.asset(
                      'assets/img_droid_knights/dk19_appicon_transparent.png',
                      width: 96,
                      height: 96,
                    ),
                  ),
                  opacity: calculateAnimationValue(_animation[0], 0, 1),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Center(
                      child: Image.asset(
                    'assets/img_droid_knights/dk_main_graphic.png',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  )),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildStars() => _topAndLefts
      .map((topAndLeft) => Positioned(
            top: calculateAnimationValue(
                _animation[1], topAndLeft['top'] - 20, topAndLeft['top']),
            left: topAndLeft['left'],
            child: Image.asset(
              'assets/img_droid_knights/dk19_appicon_star.png',
              width: 6,
              height: 6,
            ),
          ))
      .toList();

  double calculateAnimationValue(
          Animation<double> animation, double begin, double end) =>
      (begin * (1 - animation.value)) + (end * animation.value);

  double calculateTweenValue(double value, double begin, double end) =>
      (begin * (1 - value)) + (end * value);
}
