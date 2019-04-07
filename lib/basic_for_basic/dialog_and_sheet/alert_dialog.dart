

import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  _SimpleCustomDialogState createState() => _SimpleCustomDialogState();
}

class _SimpleCustomDialogState extends State<AlertDialogPage> {

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
        title: Text("Alert Dialog"),
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
        builder: (BuildContext context) =>
        AlertDialog(
          title: Text("Hello World"),
          content: Text("Flutter Live Coding Show "),
          semanticLabel: "Simple Test",
          actions: <Widget>[
            FlatButton(
              child: Text("Cancel"),
              onPressed: (){
                Navigator.pop<String>(context, "Cancel");
              },
            ),
            FlatButton(
              child: const Text("OK"),
              onPressed: ()=>Navigator.pop<String>(context, "OK"),
            )
          ],
        )
    ).then<void>((value) => resultAlert(value));
  }


  void resultAlert(String value){
    setState(() {
      _msg = 'user selected : $value';
    });
  }










}
