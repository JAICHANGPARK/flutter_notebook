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
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Container(
                    height: 160.0,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: Stack(
                      children: <Widget>[
                        

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








