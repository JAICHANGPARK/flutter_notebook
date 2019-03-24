import 'package:flutter/material.dart';
import 'package:flutter_notebook/shoes_app_01/ui/screen_top_part.dart';

class ShoesApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> {
  double baseHeight = 640.0;

  double screenAwareSize(double size, BuildContext context) {
    return size * MediaQuery.of(context).size.height / baseHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
//            colors: [Color(0xff69d777), Color(0xff292c36)],
          colors: [Colors.grey, Color(0xff292c36)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: screenAwareSize(20.0, context),
                ),
                onPressed: () {}),
            title: Text("Custom Shoes",
            style: TextStyle(
              color: Colors.white,
              fontSize: screenAwareSize(18.0, context),
              fontFamily: 'Montserrat',

            ),),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: screenAwareSize(20.0, context),
                  color: Colors.white,
                ),
                onPressed: (){},
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductScreenTopPart(),
                ProductScreenBottomPart(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
