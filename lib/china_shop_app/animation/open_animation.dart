import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_notebook/china_shop_app/pages/index_page.dart';

class OpenAnimation extends StatefulWidget {
  @override
  _OpenAnimationState createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  List girlList = [
    'https://ws1.sinaimg.cn/large/0065oQSqgy1fze94uew3jj30qo10cdka.jpg',
    'https://ws1.sinaimg.cn/large/0065oQSqly1g04lsmmadlj31221vowz7.jpg',
    'https://ws1.sinaimg.cn/large/0065oQSqly1g0ajj4h6ndj30sg11xdmj.jpg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 0, end: 1).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return IndexPage();
        }), (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var girlRan = Random().nextInt(3);

    return FadeTransition(
      opacity: _controller,
      child: Image.network(
        girlList[girlRan],
        fit: BoxFit.cover,
      ),
    );
  }
}














