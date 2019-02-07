import 'package:flutter/material.dart';
import 'package:flutter_notebook/movie_detail/actor_scroller.dart';
import 'package:flutter_notebook/movie_detail/model/movie.dart';
import 'package:flutter_notebook/movie_detail/movie_api.dart';
import 'package:flutter_notebook/movie_detail/movie_detail_header.dart';
import 'package:flutter_notebook/movie_detail/photo_scroller.dart';
import 'package:flutter_notebook/movie_detail/story_line.dart';

class MovieHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Color(0xffff5959),
      ),
      home: HomePage(testMovie),
    );
  }
}

class HomePage extends StatefulWidget {
  final Movie movie;

  HomePage(this.movie);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MovieDetailHeader(widget.movie),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: StoryLine(widget.movie.storyline),
            ),

            PhotoScroller(widget.movie.photoUrls), //awwwwww
            SizedBox(height: 20.0,),
            ActorScroller(widget.movie.actors),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );
  }
}









