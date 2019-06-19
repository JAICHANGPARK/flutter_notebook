import 'package:flutter/material.dart';

class AppFreelancers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
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

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    _animation = Tween<double>(begin: 300, end: 150).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                _controller.forward();
              },
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 24,
              left: 0,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ),
            Positioned(
              top: 40,
              left: 0,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Client's name"),
                      Text("3 current project of 11 in total"),
                    ],
                  ),

                  Icon(Icons.more_vert,size: 42, color: Colors.white,)
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: _animation.value,
              decoration: BoxDecoration(color: Colors.red),
            )
          ],
        ));
  }
}

















