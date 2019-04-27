import 'package:flutter/material.dart';
import 'package:flutter_notebook/video_game_app/model/forum.dart';
import 'package:flutter_notebook/video_game_app/ui/app_background.dart';

class DetailsPage extends StatefulWidget {
  final Forum forum;

  DetailsPage({this.forum});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation<double> _fadeAnimation;
  Animation<double> _scaleAnimation;
  Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,
    duration: Duration(milliseconds: 500));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _offsetAnimation = Tween<Offset>(begin: Offset(0, 1),
    end: Offset(0, 0)).animate(_controller);
  }
  _playAnimation(){
    _controller.reset();
    _controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(
            firstColor: firstOrangeCircleColor,
          )
        ],
      ),
    );
  }
}


















