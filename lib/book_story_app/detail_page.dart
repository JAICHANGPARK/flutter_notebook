import 'package:flutter/material.dart';
import 'package:flutter_notebook/book_story_app/main_page.dart';

class BookDetailPage extends StatefulWidget {
  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  void back(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return BooksMainPage();
    }));
  }
  void _tapDown(TapDownDetails details) {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return BooksMainPage();
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Hero(
              tag: "img",
                child: GestureDetector(
                  onTapDown:_tapDown,
                  child: Container(child: Image.network("https://t3.ftcdn.net/jpg/01/21/39/24/240_F_121392436_TyJ0RrKUxTni7ADl2tEmxhiWB3DQpa99.jpg",
                  fit: BoxFit.cover,)),
                )),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 0,
            child: Container(
              height: 360,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16,),
                  Text("Bedtime for Tip", style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontFamily: 'Montserrat'
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    ,style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        wordSpacing: 1.5
                      ),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


















