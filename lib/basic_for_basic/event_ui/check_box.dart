


import 'package:flutter/material.dart';


class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  String _message;
  bool _checkec = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message  = "ok";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box Page"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            _message
          ),

          SizedBox(height: 30,),
          Row(
            children: <Widget>[
              Checkbox(
                value: _checkec,
                onChanged: checkChanged,
              ),
              Text('Check')
            ],
          ),
          SizedBox(height: 18,),
          Row(
            children: <Widget>[
              Switch(
                value: _checkec,
                onChanged: checkChanged,
              ),
              Text('Check')
            ],
          )
        ],
      ),
    );
  }

  checkChanged(bool value){
    setState(() {
      _checkec = value;
      _message = value? 'Checked' : 'UnChecked';
    });
  }
}
