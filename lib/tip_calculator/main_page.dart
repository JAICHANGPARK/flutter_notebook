import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/tip_calculator/colors.dart';
import 'package:flutter_notebook/tip_calculator/number_pad.dart';
import 'package:flutter_notebook/tip_calculator/scale_route.dart';
import 'package:intl/intl.dart';

class TipCalculatorApp extends StatelessWidget {
  ThemeData _buildAppTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
        primaryColor: appPrimaryColor,
        backgroundColor: Colors.yellow,
        scaffoldBackgroundColor: appScaffoldColor,
        textSelectionColor: appPrimaryTextColor,
        cursorColor: appPrimaryTextColor,
        textTheme: base.textTheme.apply(
          bodyColor: appTextColor,
          displayColor: appTextColor,
        ),
        primaryTextTheme: base.primaryTextTheme.apply(
          bodyColor: appPrimaryTextColor,
          displayColor: appPrimaryTextColor,
        ),
        accentTextTheme: base.primaryTextTheme.apply(
          bodyColor: accentTextColor,
          displayColor: accentTextColor,
        ),
        buttonTheme: base.buttonTheme.copyWith(
            buttonColor: appButtonColor, textTheme: ButtonTextTheme.primary),
        iconTheme: base.iconTheme.copyWith(color: appPrimaryButtonColor));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: _buildAppTheme(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const platform = const MethodChannel('com.dreamwalker.tips/tipinfo');
  static const stream = const EventChannel('com.dreamwalker.tips/tipinfo/data');

  StreamSubscription tipSubscription;
  NumberFormat formatter = NumberFormat("##0.00");
  TextEditingController billTotalController = TextEditingController();

  int tipPercent = 10, tipSplit = 1;
  double billTotal = 0.0;
  double tip = 0.0;
  double totalWithTip = 0.0;
  double totalEach = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupDeviceLocale();
    if (Platform.isIOS) {
      activateWatchConnection();
    }
  }

  @override
  void dispose() {
    if (tipSubscription != null) {
      tipSubscription.cancel();
      tipSubscription = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Tip Calculator',
          style: Theme.of(context).primaryTextTheme.display1,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  elevation: 0.0,
                  onPressed: () async {
                    var value = await Navigator.of(context).push(ScaleRoute(
                      widget: NumberPad(billTotal,
                          normalStyle: Theme.of(context).textTheme.display2,
                          errorStyle:
                              Theme.of(context).accentTextTheme.display2),
                    )

//                    var value = await Navigator.push(
//                        context,
//                        ScaleRoute(
//                          widget: NumberPad(billTotal,
//                              normalStyle: Theme.of(context).textTheme.display2,
//                              errorStyle:
//                                  Theme.of(context).accentTextTheme.display2),
//                        )
//                        MaterialPageRoute(
//                            builder: (context) => NumberPad(billTotal,
//                                normalStyle:
//                                    Theme.of(context).textTheme.display2,
//                                errorStyle:
//                                    Theme.of(context).accentTextTheme.display2))
////                    MaterialPageRoute((context) => NumberPad(
////                      billTotal,
////                      normalStyle : Theme.of(context).textTheme.display2,
////                      errorStyle : Theme.of(context).accentTextTheme.display2
////                    ))
                        );
                    if (value != null) {
                      calculateBill(value);
                    }
                  },
                  color: Colors.orange,
                  child: Text(
                    'Bill Total',
                    style: Theme.of(context).primaryTextTheme.headline,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                Text(
                  "${formatter.format(billTotal)}",
                  style: Theme.of(context).primaryTextTheme.headline,
                  textAlign: TextAlign.right,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Tip @ $tipPercent%',
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  "${formatter.format(totalWithTip)}",
                  style: Theme.of(context).primaryTextTheme.headline,
                  textAlign: TextAlign.right,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 1.0,
              color: Theme.of(context).textTheme.headline.color,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "split between",
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  "$tipSplit",
                  style: Theme.of(context).primaryTextTheme.headline,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cost each",
                  style: Theme.of(context).textTheme.headline,
                ),
                Text(
                  "${formatter.format(totalEach)}",
                  style: Theme.of(context).primaryTextTheme.headline,
                  textAlign: TextAlign.right,
                )
              ],
            ),
            Container(
                margin: EdgeInsets.all(15.0),
                height: 1.0,
                color: Theme.of(context).textTheme.headline.color),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Tip Percentage",
                          style: Theme.of(context).primaryTextTheme.title,
                          textAlign: TextAlign.right,
                        ),
                        IconButton(
                          iconSize: 50.0,
                          onPressed: () {
                            if (tipPercent > 0) {
                              tipPercent--;
                              calculateBill(null);
                            }
                          },
                          icon: Icon(Icons.remove_circle),
                        ),
                        IconButton(
                            iconSize: 50.0,
                            icon: Icon(Icons.add_circle),
                            onPressed: () {
                              tipPercent++;
                              if (tipPercent < 100) {
                                calculateBill(null);
                              }
                            })
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Split between",
                          style: Theme.of(context).primaryTextTheme.title,
                          textAlign: TextAlign.right,
                        ),
                        IconButton(
                            iconSize: 50.0,
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {
                              if (tipSplit > 1) {
                                tipSplit--;
                                calculateBill(null);
                              }
                            }),
                        IconButton(
                            iconSize: 50.0,
                            icon: Icon(Icons.add_circle),
                            onPressed: () {
                              if (tipSplit < 50) {
                                tipSplit++;
                                calculateBill(null);
                              }
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ),
//            Text("Thanks for watching Today :) ", style: TextStyle(
//              fontSize: 30.0
//            ),)
          ],
        ),
      ),
    );
  }

  calculateBill(double total) {
    total = (total ?? billTotal);
    setState(() {
      billTotal = total;
      billTotalController.text = "${formatter.format(billTotal)}";
      tip = (total / 100) * tipPercent;
      totalWithTip = total + tip;
      totalEach = (totalWithTip / tipSplit);
    });
  }

  activateWatchConnection() async {
    await platform.invokeMethod("activateSession");
    stream.receiveBroadcastStream().listen((value) {
      List result = value;
      if (result[0] != null) {
        tipPercent = int.tryParse(result[0]['tip']);
        tipSplit = int.tryParse(result[0]['split']);
        billTotal = double.tryParse(result[0]['bill']);
        calculateBill(null);
      }
    });
  }

  setupDeviceLocale() async {
    List locales = await platform.invokeMethod("perferredLanguages");
    debugPrint("$locales");
    if (locales.length > 0) {
      formatter = NumberFormat.simpleCurrency(locale: locales[0]);
    }
    billTotalController.text = formatter.format(0.0);
    setState(() {});
  }
}
