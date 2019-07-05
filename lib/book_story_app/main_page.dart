import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/book_story_app/detail_page.dart';
import 'package:parallax_image/parallax_image.dart';

class BookStoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BooksMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RevealProgressButton(),
      ),
    );
  }
}

class RevealProgressButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RevealProgressButtonState();
}

class _RevealProgressButtonState extends State<RevealProgressButton>
    with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;
  double _fraction = 0.0;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RevealProgressPainter(_fraction, MediaQuery.of(context).size),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000), () {
      reveal();
    });
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  void reveal() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });

    _controller.forward();
  }
}

class RevealProgressButtonPainter extends CustomPainter {
  double _fraction = 0.0;
  Size _screenSize;

  RevealProgressButtonPainter(this._fraction, this._screenSize);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    var finalRadius =
        sqrt(pow(_screenSize.width / 2, 2) + pow(_screenSize.height / 2, 2));
    var radius = 24.0 + finalRadius * _fraction;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(RevealProgressButtonPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}

class RevealProgressPainter extends CustomPainter {
  double _fraction = 0.0;
  Size _screenSize;

  RevealProgressPainter(this._fraction, this._screenSize);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final finalRadius =
        sqrt(pow(_screenSize.width , 2) + pow(_screenSize.height, 2));
    var radius = 1.0 + finalRadius * _fraction;
    canvas.drawCircle(Offset(size.width, size.height), radius, paint);
//    final secondFinalRadius =
//    sqrt(pow(_screenSize.width , 2) + pow(_screenSize.height, 2));
//    var secondRadius = 24.0 + secondFinalRadius / _fraction;
//    canvas.drawCircle(Offset(size.width, size.height), secondRadius, paint);
  }

  @override
  bool shouldRepaint(RevealProgressPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}

class BooksMainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<BooksMainPage>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  double _fraction = 0.0;

  @override
  void initState() {
    super.initState();
  }

  void reveal() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      })..addStatusListener((a){
        if(a == AnimationStatus.completed){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return BookDetailPage();
          }));
        }
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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

          Positioned(
            top: 32,
            left: 0,
            right: 16,
            child: Container(
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
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Container(
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
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 160,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Hero(
                    tag: "img",
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          reveal();
                        },
                        child: Container(
                          margin: const EdgeInsets.all(7),
                          width: MediaQuery.of(context).size.width - 16,
                          child: ParallaxImage(
                            image: NetworkImage(
                              "https://t3.ftcdn.net/jpg/01/21/39/24/240_F_121392436_TyJ0RrKUxTni7ADl2tEmxhiWB3DQpa99.jpg",
                            ),
                            color: Colors.white,
                            extent: 100.0,
                          ),
                        ),
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
            ),
          ),
          Positioned(
            left: 0,
            bottom: 60,
            child: CustomPaint(
              painter: RevealProgressPainter(
                  _fraction, MediaQuery.of(context).size),
            ),
          ),
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
