import 'package:flutter/material.dart';
import 'package:flutter_notebook/my_movie_app/home_bottom_part.dart';
import 'package:flutter_notebook/my_movie_app/home_top_part.dart';

class MyMovieApp extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopPart(),
            HomeBottomPart(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xffe52020),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Color(0xffe52020)),
              )
          ),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,

              ),
              title: Text(
                "Search",

              )
          ),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
              ),
              title: Text(
                "Bookmark",
              )
          ),

          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: Text(
                "Profile",
              )
          ),






        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
