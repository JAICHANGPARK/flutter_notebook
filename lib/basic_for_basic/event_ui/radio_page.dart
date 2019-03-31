import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  @override
  _RadioButtonPageState createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  String _message;
  String _selected = 'A';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = "OK";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button Page"),
      ),
      body: Column(
        children: <Widget>[
          Text(_message),
          SizedBox(height: 16.0,),
          Row(
            children: <Widget>[
              Radio<String>(
                value: "A",
                groupValue: _selected,
                onChanged: (String value) => checkChange(value)
              ),
              Text("Radio A")
            ],
          ),
          Row(
            children: <Widget>[
              Radio<String>(
                  value: "B",
                  groupValue: _selected,
                  onChanged: (String value) => checkChange(value)
              ),
              Text("Radio B")
            ],
          )
        ],
      ),
    );
  }
  void checkChange(String value){
    setState(() {
      _selected = value;
      _message = 'selected : $_selected';
    });
  }
}
