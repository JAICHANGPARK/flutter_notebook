import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_notebook/reading_book_part1/page/page/browse_page.dart';
import 'package:flutter_notebook/reading_book_part1/page/page/main_mid_list.dart';
import 'package:flutter_notebook/reading_book_part1/page/page/main_top_list.dart';

class BookReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookReaderAppPage(),
    );
  }
}

class BookReaderAppPage extends StatefulWidget {
  @override
  _BookReaderAppState createState() => _BookReaderAppState();
}

class _BookReaderAppState extends State<BookReaderAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Hey User!",
          style: TextStyle(
              letterSpacing: 1.5,
              wordSpacing: 1.5,
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              size: 30.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                "For You",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            PageTopUi(),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Browse",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                      (context) => BrowsePage()));
                    },
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            MainMidUi(),

            SizedBox(height: 8.0,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("You May Also Know",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),

                ),

                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                    Container(
                      height: 80.0,
                      width: 60.0,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(7.0),
                        boxShadow: [BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1.0,
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 2.0),
                        )]
                          ,
                        image: DecorationImage(image:
                        NetworkImage("https://cdn.pixabay.com/photo/2018/11/11/16/51/ibis-3809147_960_720.jpg"),
                        fit: BoxFit.cover)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text("The Lion King",
                          style: TextStyle(
                            letterSpacing: 1.1,
                            wordSpacing: 1.2,
                            color: Colors.black,
                          ),),

                          Text("Follow your heart, but be quiet for a while first.",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black45,
                            ),
                          ),
                          Text("Learn to trust yout heart....",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black45,
                            ),
                          ),

                          SizedBox(height: 24.0,),

                          Text("See full review >",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0
                          ),)

                        ],
                      ),
                    )
                  ],
                ),
              ),
            )











          ],
        ),
      ),
    );
  }
}
