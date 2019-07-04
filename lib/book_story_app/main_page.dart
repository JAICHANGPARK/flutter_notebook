import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';

class BookStoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RevealProgressPainter extends CustomPainter {
  double _fraction = 0.0;
  Size _screenSize;

  RevealProgressPainter(this._fraction, this._screenSize);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill;
    final finalRadius =
        sqrt(pow(_screenSize.width / 2, 2) + pow(_screenSize.height / 2, 2));
    var radius = 24.0 + finalRadius + _fraction;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(RevealProgressPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  double _fraction = 0.0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    Timer(Duration(milliseconds: 3000), () {});
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });
  }

  void reveal() {
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                ),
                Spacer(),
                Text(
                  "Story Books",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.list,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            height: 38,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "The Magic",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 2,
                  width: 16,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _controller.forward();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(7),
                    width: MediaQuery.of(context).size.width - 16,
                    child: ParallaxImage(
                      image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/01/21/39/24/240_F_121392436_TyJ0RrKUxTni7ADl2tEmxhiWB3DQpa99.jpg",
                      ),
                      extent: 100.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                  width: MediaQuery.of(context).size.width - 16,
                  child: ParallaxImage(
                    image: NetworkImage(
                        "https://voxillustration.com/category/wp-content/uploads/2018/10/Collage-Illustration-1.jpg"),
                    extent: 80.0,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  margin: const EdgeInsets.all(7),
                  width: MediaQuery.of(context).size.width - 16,
                  child: ParallaxImage(
                    image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/01/21/39/24/240_F_121392436_TyJ0RrKUxTni7ADl2tEmxhiWB3DQpa99.jpg",
                    ),
                    extent: 100.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 48,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 38,
                ),
                Container(
                  height: 4,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.white),
                )
              ],
            ),
            Icon(
              Icons.wifi,
              color: Colors.grey,
              size: 38,
            ),
            Icon(
              Icons.star_border,
              color: Colors.grey,
              size: 38,
            ),
            Icon(
              Icons.show_chart,
              color: Colors.grey,
              size: 38,
            ),
            Icon(
              Icons.face,
              color: Colors.grey,
              size: 38,
            ),
          ],
        ),
      ),
    );
  }
}
