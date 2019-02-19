import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberPad extends StatefulWidget {
  final TextStyle normalStyle;
  final TextStyle errorStyle;
  final double currentValue;
  final int digitLimit = 7;

  NumberPad(this.currentValue,
      {@required this.normalStyle, @required this.errorStyle});

  @override
  _NumberPadState createState() => _NumberPadState();
}

class _NumberPadState extends State<NumberPad> {
  String displayedValue = "";
  double billValue = 0.0;
  TextStyle displayStyle;
  NumberFormat formatter = NumberFormat("##0.00");


  @override
  void initState() {
    // TODO: implement initState
    double billValue = widget.currentValue;
    if(billValue > 0.0){
      displayStyle = widget.normalStyle;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320.0,
          height: 500.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Bill Total',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).primaryTextTheme.display1,),
                ),

                Card(
                  margin: EdgeInsets.all(20.0),
                  child: Text(displayedValue, textAlign: TextAlign.right,
                  maxLines: 1, style: displayStyle,),
                ),
                Expanded(
                  child: GridView.count(crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  primary: false,
                    padding: EdgeInsets.all(20.0),
                    children: <Widget>[
                      RoundKey("6", onPressed : KeyEntry,)
                    ],

                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }




















}
