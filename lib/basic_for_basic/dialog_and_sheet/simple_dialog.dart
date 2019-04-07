


import 'package:flutter/material.dart';

class SimpleCustomDialog extends StatefulWidget {
  @override
  _SimpleCustomDialogState createState() => _SimpleCustomDialogState();
}

class _SimpleCustomDialogState extends State<SimpleCustomDialog> {

  String _msg ;

  @override
  void initState() {

    _msg = "ok";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Custom Dialog"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            _msg,
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 10,),
          RaisedButton(

            onPressed: buttonPressed,
            padding: EdgeInsets.all(10),
            child: Text("Tap And Show Dialog",
            style: TextStyle(color: Colors.black),),
          )

        ],
      ),
    );
  }

  void buttonPressed() {
    showDialog(context: context,
      builder: (context) => Container(
        color: Colors.white70,
        child: Text("Hello world",
        style: TextStyle(),),
      )
    );
  }





  







}
