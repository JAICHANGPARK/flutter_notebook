import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/auction_ios_app/main_page.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_notebook/currence_ui/main_page.dart';
import 'package:flutter_notebook/model/coin_market.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(AuctionKawsApp());
}

//void main() => runApp(
//  BlocProvider<TabBloc>(
//    bloc: TabBloc(),
//    child: DroidKnightHomePage(),
//  )
//);
//  getPlaces(33.9850, -118.4695);
//  final gridList = rootBundle.loadString('assets/elements/elementsGrid.json')
//  .then((source)=> jsonDecode(source)['elements'] as List)
//  .then((list)=> list.map((json) => json != null ? ElementData.fromJson(json) : null).toList());
//  runApp(ElementsApp(gridList));
//  runApp(Provider<AppStateModel>(
//    builder: (context) => AppStateModel()..loadProducts(),
//    child: CupertinoStoreApp(),
//  ));
//  runApp(BasicForBasic());
//void main() => runApp(MyApp());
//void main() => runApp(CupertinoAlertDemo());
//void main() => runApp(MyAppPlanet());

//void main() => runApp(CurvedLinePage());
//void main() => runApp(FidiboMainPage());

//void main() => runApp(GourmetPage());

//void main() => runApp(FlightDemoHero());

//void main() => runApp(BookReaderApp());

//void main() => runApp(FingerMainPage());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

Future<List<CoinMarket>> fetchListCoin() async {
  var response = await http.get('https://api.coinmarketcap.com/v1/ticker/');

//  print(response.body);

  if (response.statusCode == 200) {
    List coins = json.decode(response.body);
    return coins.map((coin) => new CoinMarket.fromJson(coin)).toList();
  } else {
    throw Exception('Failed Fetch List Coin');
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list;
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  Future<Null> refreshListCoin() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      list = fetchListCoin();
    });
    return null;
  }

  @override
  void initState() {
    super.initState();
    refreshListCoin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Coin Tracker'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.refresh,
              ),
              onPressed: refreshListCoin,
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Text("Dreamwalker"),
                  accountEmail: Text("aristojeff@gmail.com")),
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("Currence"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CurrencyAppPage()));
                },
              )
            ],
          ),
        ),
        body: Center(
          child: RefreshIndicator(
              key: refreshKey,
              child: FutureBuilder<List<CoinMarket>>(
                  future: list,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<CoinMarket> coins = snapshot.data;
                      return ListView(
                          children: coins
                              .map((coin) => Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: 8.0, bottom: 8.0),
                                                width: 56.0,
                                                height: 56.0,
                                                child: Image.network(
                                                  'https://res.cloudinary.com/dxi90ksom/image/upload/${coin.symbol.toLowerCase()}.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                padding: EdgeInsets.all(4.0),
                                                child: Text(
                                                    '${coin.symbol} | ${coin.name}'),
                                              )
                                            ],
                                          ),
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(8.0),
                                                    child: Text(
                                                        '\$${double.parse(coin.priceUsd).toStringAsFixed(2)}'),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              '1h: ${coin.percentChange1h}%',
                                            ),
                                            Text(
                                                '24h: ${coin.percentChange24h}%'),
                                            Text('7d: ${coin.percentChange7d}%')
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                    ],
                                  )))
                              .toList());
                    } else if (snapshot.hasError) {
                      return Text('Error');
                    }

                    return CircularProgressIndicator();
                  }),
              onRefresh: refreshListCoin),
        ));
  }
}
