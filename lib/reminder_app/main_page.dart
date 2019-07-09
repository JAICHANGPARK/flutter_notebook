import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class ReminderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    Color backColor = Color(0xff010a20);
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 4),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Stack(
              children: <Widget>[
                Transform(
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 18, right: 16),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  transform: Matrix4.rotationY(0.6)..rotateZ(-0.06),
                ),
                Transform(
                  child: Container(
                    margin: EdgeInsets.only(top: 24, left: 16, right: 16),
                    decoration: BoxDecoration(
                        color: Color(0xff31394d),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  transform: Matrix4.rotationY(0.3)..rotateZ(-0.03),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32, left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Color(0xff252e42),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 24, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Text("Reminders", style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'
                            ),),
                            Container(
                              width: 62,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Color(0xffff8469),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Text("EDIT",style: TextStyle(
                                  color: Colors.white
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 32,),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle
                                ),
                              ),
                            ),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Change book cover", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16
                                    ),),
                                   SizedBox(width: 124,),
                                    Icon(Icons.bookmark, color: CupertinoColors.activeBlue,)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Text("Change book cover by closing the book again",
                                style: TextStyle(
                                  color: Colors.grey
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                            SizedBox(width: 16,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Move to another position", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16
                                    ),),
                                    SizedBox(width: 84,),
                                    Icon(Icons.bookmark, color: CupertinoColors.activeBlue,)
                                  ],
                                ),
                                SizedBox(height: 16,),
                                Text("Change book cover by closing the book again",
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 72,
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Icon(Icons.add, size: 58,
                    color: Colors.white,),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}























