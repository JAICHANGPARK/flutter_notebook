import 'package:flutter/material.dart';

class BookHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.shopping_basket,
          color: Colors.grey,
        ),
        title: Text(
          "Book Store",
          style: TextStyle(
              color: Colors.cyan, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage( "https://static.independent.co.uk/s3fs-public/thumbnails/"
                    "image/2016/11/16/12/homer-simpson.jpeg"),
//              child: Image.network(
//                "https://static.independent.co.uk/s3fs-public/thumbnails/"
//                    "image/2016/11/16/12/homer-simpson.jpeg",
//                fit: BoxFit.fill,
//              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
    );
  }
}
