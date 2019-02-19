import 'package:flutter/material.dart';
import 'package:flutter_notebook/tip_calculator/round_key.dart';
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
    super.initState();
    double billValue = widget.currentValue;
    if (billValue > 0.0) {
      displayStyle = widget.normalStyle;
    }
  }

  Widget generateiOSCloseButton() {
    return Container(
      child: IconButton(
        iconSize: 40.0,
          icon: Icon(Icons.highlight_off, color: Colors.grey,),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  keyEntry(value){
    String display = displayedValue;
    if(value == "C"){
      display = display.length > 0 ? display.substring(0, display.length - 1): "";
    }else{
      if(display.length < widget.digitLimit){
        display += value;
      }
    }

    double billTotal = 0.0;
    if(display.length >0){
      try{
        billTotal = double.parse(display);
        displayStyle = widget.normalStyle;
      }catch(e){
        displayStyle = widget.errorStyle;
      }
    }

    setState(() {
      displayedValue = display;
      billValue = billTotal;
    });


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
                    style: Theme
                        .of(context)
                        .primaryTextTheme
                        .display1,),
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
                      RoundKey("6", onPressed: keyEntry ,),
                      RoundKey("7", onPressed: keyEntry ,),
                      RoundKey("8", onPressed: keyEntry ,),
                      RoundKey("9", onPressed: keyEntry ,),

                      RoundKey("2", onPressed: keyEntry ,),
                      RoundKey("3", onPressed: keyEntry ,),
                      RoundKey("4", onPressed: keyEntry ,),
                      RoundKey("5", onPressed: keyEntry ,),

                      RoundKey("C", onPressed: keyEntry ,),
                      RoundKey(".", onPressed: keyEntry ,),
                      RoundKey("0", onPressed: keyEntry ,),
                      RoundKey("1", onPressed: keyEntry ,),

                    ],

                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                      onPressed: (){
                    try{
                      Navigator.pop(context, billValue);
                    }catch(e){
                      throw(e);
                    }
                  },
                    child: Text("ENTER", style: Theme.of(context).primaryTextTheme.headline,),

                  ),
                ),


                generateiOSCloseButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
