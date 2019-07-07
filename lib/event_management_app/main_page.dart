import 'package:flutter/material.dart';

class EventsManagementApp extends StatelessWidget {
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
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //TODO Background
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child:Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xff4d6ee5),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xff515ae3),
                  ),
                )
              ],
            ),

          ),
          //TODO Implement Appbar
          Positioned(
            top: 32,
            left: 16,
            right: 16,
            child: Container(
              height: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: (){},),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Text("2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10
                          ),),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 16,
            top: 86,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hey Dreamwalker",style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,

                ),),
                SizedBox(height: 16),
                Text("Your Upcoming Events...",style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 32),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xff0022A1),
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        height: 48,
                        width: 48,
                        margin: EdgeInsets.only(left: 2, top: 6, bottom: 6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            Colors.lightBlueAccent,
                            Colors.indigo,
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                            stops: [0, 0.9]
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.search,color: Colors.white,),
                        ),
                      )
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
























































