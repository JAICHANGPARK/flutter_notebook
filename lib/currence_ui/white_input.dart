import 'package:flutter/material.dart';
import 'package:flutter_notebook/currence_ui/currency_service.dart';

class InputWhitePage extends StatefulWidget {
  final origCurrency;
  final convCurrency;

  InputWhitePage({this.origCurrency, this.convCurrency});

  @override
  _InputWhitePageState createState() => _InputWhitePageState();
}

class _InputWhitePageState extends State<InputWhitePage> {
  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child: Text(
              "tap to delete",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 10.0,),


          Center(
            child: Text(

            currInput.toString(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          SizedBox(height: 25.0),
          numberRow(1,2,3),

          SizedBox(height: 25.0),
          numberRow(4,5,6),

          SizedBox(height: 25.0),
          numberRow(7,8,9),

          SizedBox(height: 25.0),
          finalRow(),
        ],
      ),
    );
  }

  calculateNumber(num) {
    if(currInput == 0){
      setState(() {
        currInput = num;
      });

    }else{
      setState(() {
        currInput = (currInput * 10) + num;
      });
    }

  }


  Widget numberRow(num1, num2, num3){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: (){
            calculateNumber(num1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.red.withOpacity(0.3),
            ),
            child: Center(
              child: Text(num1.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
        ),

        InkWell(
          onTap: (){
            calculateNumber(num2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.red.withOpacity(0.3),
            ),
            child: Center(
              child: Text(num2.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
        ),

        InkWell(
          onTap: (){
            calculateNumber(num3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.red.withOpacity(0.3),
            ),
            child: Center(
              child: Text(num3.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
        ),


      ],
    );
  }

  Widget finalRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: (){},
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.red.withOpacity(0.3)
            ),
            child: Center(
              child:
              Text('.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ),

        InkWell(
          onTap: () {
            calculateNumber(0);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.red.withOpacity(0.3)),
            child: Center(
              child: Text(
                0.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        InkWell(
          onTap: () {
            CurrencyService().convertCurrency(
                widget.convCurrency, widget.origCurrency, currInput, context);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFC1514)),
            child: Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 25.0,
                )),
          ),
        )



      ],
    );
  }

}





















