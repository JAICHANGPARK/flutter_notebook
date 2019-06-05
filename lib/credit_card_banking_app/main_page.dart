
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
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.red
              ),
            ),
            Expanded(
              flex: 5,
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























