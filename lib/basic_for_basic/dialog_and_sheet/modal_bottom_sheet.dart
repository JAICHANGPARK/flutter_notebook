import 'package:flutter/material.dart';

class ModalBottomSheets extends StatefulWidget {
  @override
  _ModalBottomSheetsState createState() => _ModalBottomSheetsState();
}

class _ModalBottomSheetsState extends State<ModalBottomSheets> {
  String _message;

  @override
  void initState() {
    // TODO: implement initState
    _message = "init Set";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal Bottom Sheet"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(fontSize: 40),
          ),
          FlatButton(
            child: Text("Open Detail"),
            onPressed: buttonPressed,
          )
        ],
      ),
    );
  }

  void buttonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            children: <Widget>[
              Text(
                "This is Bottom Sheet",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () => Navigator.pop<String>(context, "Closed"),
                child: Text(
                  "Close",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
              )
            ],
          );
        }).then((value) => resultAlert(value));
  }

  void resultAlert(String value) {
    setState(() {
      _message = 'user selected : $value';
    });
  }
}
