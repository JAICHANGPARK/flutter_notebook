







import 'package:flutter/material.dart';
import 'package:flutter_notebook/currence_ui/dashboard.dart';


class CurrencyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: DashboardPage(
        currencyVal: 0.0,
        convertedCurrency: 0.0,
        currencyone: 'USD',
        currencytwo: 'RUB',
        isWhite: false,
      ),
    );
  }
}

