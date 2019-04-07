import 'package:flutter/material.dart';

class SimpleOptionDialogPage extends StatefulWidget {
  @override
  _SimpleOptionDialogPageState createState() => _SimpleOptionDialogPageState();
}

class _SimpleOptionDialogPageState extends State<SimpleOptionDialogPage> {
  String _msg;

  @override
  void initState() {
    _msg = "ok";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog"),
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
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: buttonPressed,
            padding: EdgeInsets.all(10),
            child: Text(
              "Tap And Show Dialog",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }

  void buttonPressed() {
    showDialog(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
              title: Text("Select assignment"),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    return Navigator.pop<String>(context, 'Pizza');
                  },
                  child: Text("Pizza"),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    return Navigator.pop<String>(context, 'Hamberger');
                  },
                  child: Text("Hamberger"),
                ),
                SimpleDialogOption(
                  onPressed: () => Navigator.pop<String>(context, "Others"),
                  child: Text("Others"),
                ),
              ],
            )).then<void>((value) => resultAlert(value));
  }

  void resultAlert(String value) {
    setState(() {
      _msg = 'user selected : $value';
    });
  }
}
