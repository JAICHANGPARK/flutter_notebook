import 'package:flutter/material.dart';

class JuiceStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => MainPage(),
      },
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                      fit: BoxFit.cover)),
            ),
          )
//          CircleAvatar(
//            backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4")
//            ,
//            radius: 30,
//          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text("Hi Dreamwalker", style: TextStyle(
              fontSize: 18,
              color: Colors.grey
            ),),
            SizedBox(height: 8,),
            Text("What would you like to drink?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 16,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16)
                ),
                color: Colors.grey.withOpacity(0.1)
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 32,),
                    disabledBorder: InputBorder.none,
                    hintText: "Search your favorite drinks",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}













