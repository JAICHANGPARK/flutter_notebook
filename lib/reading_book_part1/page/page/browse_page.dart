import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(bottomAppBarColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: DetailHomePage(),
    );
  }
}

class DetailHomePage extends StatefulWidget {
  @override
  _DetailHomePageState createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Browse",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30.0),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height - 180.0,
            width: MediaQuery.of(context).size.width - 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Container(
                    height: 160.0,
                    width: double.infinity,
//                    color: Colors.yellow,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 60.0,
                          child: Container(
                            height: 160,
                            width: 280,
//                            color: Colors.orange,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45.withOpacity(0.2),
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 1.0,
                                    spreadRadius: 2.0,
                                  )
                                ]),

                            child: Row(children: <Widget>[
                              SizedBox(
                                width: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text(
                                        "Earthsea",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 20.0,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "8.6",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),

                                    SizedBox(
                                      height: 24.0,
                                    ),
                                    Container(
                                      height: 60.0,
                                      width: 200.0,

                                      child: AutoSizeText(""
                                          "asjdlsajdlksajdlsjkldsajdsdasdjsasajdlsajdlsjldajdasjj",
                                      style: TextStyle(color: Colors.grey),),
                                    )
//                                    Text("To the world you may one ", style: TextStyle(
//                                      color: Colors.black45
//                                    ),),

                                  ],
                                ),

                              ),
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 8.0,
                          child: Container(
                            height: 140.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black45.withOpacity(0.2),
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 1.0,
                                    spreadRadius: 2.0,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Image.network(
                                  "https://cdn.pixabay.com/photo/2017/03/05/21/06/bird-2119874_960_720.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
            fixedColor: Colors.deepOrange,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.tag_faces), title: Text("Mood")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), title: Text("Chat")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Me")),
            ]),
      ),
    );
  }
}
