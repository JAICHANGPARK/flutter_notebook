import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/home_page.dart';

class NartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            color: Color(0xd9fcfcff),
            child: Center(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "N A R T",
                      style: TextStyle(
                          fontSize: 48,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ART CONNECTS",
                      style: TextStyle(letterSpacing: 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/08/03/07/51/wallpaper-2574943_960_720.png"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Hero(
                tag: "nart_start",
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NartHomes()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "START",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
