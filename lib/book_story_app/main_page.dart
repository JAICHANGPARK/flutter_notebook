import 'package:flutter/material.dart';

class BookStoryApp extends StatelessWidget {
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

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
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
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Placeholder(),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            height: 38,
            child: Placeholder(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Placeholder(),
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
