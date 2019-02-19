



import 'package:flutter/material.dart';

class RoundKey extends StatelessWidget {

  final String value;
  final Color color;
  final Function onPressed;


  RoundKey(this.value, {this.color: Colors.grey, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: RaisedButton(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0)
          ),
          onPressed: (){
        onPressed(value);
      },
      child: Text(
        value,
        style: Theme.of(context).primaryTextTheme.headline,
      ),

      ),
    );
  }
}












