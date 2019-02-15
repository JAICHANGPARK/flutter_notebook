import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/currence_ui/dashboard.dart';

class CurrencyList extends StatefulWidget {
  @override
  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),

      body: ListView(
        children: <Widget>[
            getListItem('Russian Ruble', 'RUB'),
            getListItem('Japanes Yen', 'JPY'),
            getListItem('Korean Won', 'KRW'),

        ],
      ),
    );
  }



  Widget getListItem(String currencyName, String currency){
    return InkWell(
      onTap: (){
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context)=>
          DashboardPage(
            currencyVal: 0.0,
            isWhite: false,
            convertedCurrency: 0.0,
            currencyone: 'USD',
            currencytwo: currency,
          )
          ),
        );
      },

      child: Padding(padding: EdgeInsets.only(left: 25.0, bottom: 20.0),
      child: Text(currencyName, style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),

      ),

    );

  }



}










