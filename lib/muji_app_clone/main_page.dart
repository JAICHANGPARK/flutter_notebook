import 'package:flutter/material.dart';

const Color MujiColor = Color(0xff7f0019);

class FlutterMujiApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  Widget _buildMainPageWidget(index){
    switch(index){
      case 0:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child:Text("Page 0"),
          ),
        );
        break;

      case 1:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child:Text("Page1"),
          ),
        );
        break;
      case 2:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child:Text("Page 2"),
          ),
        );
        break;
      case 3:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child:Text("Page 3"),
          ),
        );
        break;
      case 4:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child:Text("Page 4"),
          ),
        );
        break;

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[

          _buildMainPageWidget(pageIndex);

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: MujiColor,
          onTap: (newIndex) {
            setState(() {
              print(newIndex);
              pageIndex = newIndex;

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text("fromMuji"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("お買い物"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("チャックイン"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("お気に入り"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text("会員証"),
            ),
          ]),
    );
  }
}
