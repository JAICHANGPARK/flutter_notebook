import 'package:flutter/material.dart';
import 'package:flutter_notebook/currence_ui/currency_list_page.dart';
import 'package:flutter_notebook/currence_ui/currency_service.dart';
import 'package:flutter_notebook/currence_ui/red_input.dart';
import 'package:flutter_notebook/currence_ui/white_input.dart';
import 'package:flutter/cupertino.dart';


class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final isWhite;

  DashboardPage(
      {this.currencyVal,
      this.convertedCurrency,
      this.currencyone,
      this.currencytwo,
      this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),

          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),

          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        CupertinoPageRoute(builder: (context)=> CurrencyList())
                      );

                    },
                    child: Text(CurrencyService().getCurrencyString(widget.currencyone),
                    style: TextStyle(color: Colors.white,
                    fontSize: 22.0,),),
                  ),

                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder:
                        (context) => InputRedPage(
                          origCurrency: widget.currencyone,
                          convCurrency: widget.currencytwo,
                        ))
                      );

                    },
                    child: Text(widget.currencyVal.toString(),
                      style: TextStyle(color: Colors.white,
                        fontSize: 100.0,),),
                  ),

                  Text(widget.currencyone,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 65.0,),
                  Container(
                    height: 125.0,
                    width: 125.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        width: 5.0
                      )
                    ),
                    child: Center(
                      child: widget.isWhite ?
                      Icon(Icons.arrow_upward,
                      size: 60.0,
                      color: Colors.red,) :
                      Icon(
                        Icons.arrow_downward,
                        size: 60.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    widget.currencytwo,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=> InputWhitePage(
                          origCurrency: widget.currencyone,
                          convCurrency: widget.currencytwo,
                        ))
                      );

                    },
                    child: Text(widget.convertedCurrency.toString(),
                    style: TextStyle(color:
                    Colors.red,
                    fontSize: 100.0,
                    ),),
                  ),
                  SizedBox(height: 20.0,),

                  Text(
                    CurrencyService().getCurrencyString(widget.currencytwo),
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22.0,

                    ),
                  )

                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}


















