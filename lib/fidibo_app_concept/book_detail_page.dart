import 'package:flutter/material.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_page.dart';

class BookDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookDetail(),
    );
  }
}

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Center(
            child: Text("Book"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon :Icon(Icons.arrow_forward,
                color: Colors.white,),
              onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => FidiboMainPage()));
              },

            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(tag: "book_img",
                child: Container(
                  height: 200.0,
                  width: 120.0,
                  child: Image.network("https://marketplace.canva.com/MACAEgi3V4g/1/0/thumbnail_large/canva-happy-kid-children-book-MACAEgi3V4g.jpg",
                    fit: BoxFit.cover,),
                )),
            Text("Thanks for Watching Today .." , style: TextStyle(
              fontSize: 24.0
            ),)
          ],

        ),
      ),
    );
  }
}



















