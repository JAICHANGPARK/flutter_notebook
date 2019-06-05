
import 'package:flutter/material.dart';

class CreditCardApp extends StatelessWidget {
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
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: <Widget>[
            Spacer(),
            Expanded(
              flex: 2,
              child: Container(
//                color: Colors.blueGrey,
              margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Colors.grey)
                ),  
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(left: 36),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Your Cards", style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2
                  ),),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(left: 36),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
//                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      width: 180,
                      margin: const EdgeInsets.only(bottom: 36),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black)
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                  color: Colors.blue
              ),

            ),
          ],
        ),
      ),
    );
  }
}























