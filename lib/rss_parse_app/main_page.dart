import 'package:flutter/material.dart';
import 'package:flutter_notebook/rss_parse_app/my_rss_page.dart';

class RssReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rss Reader App",
      theme: new ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: const Color(0xffe91e63),
        accentColor: const Color(0xffe91e63),
        canvasColor: const Color(0xfffafafa),
      ),
      debugShowCheckedModeBanner: false,
      home: new MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<String> names = [
    "主要ニュース",
    "国際関係",
    "国内の出来事",
    "IT関係"
  ];
  final List<String> links = [
    "https://news.yahoo.co.jp/pickup/rss.xml",
    "https://news.yahoo.co.jp/pickup/world/rss.xml",
    "https://news.yahoo.co.jp/pickup/domestic/rss.xml",
    "https://news.yahoo.co.jp/pickup/computer/rss.xml",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yahoo Japan News"),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: items(context),
        ),
      ),
    );
  }

  List<Widget> items(BuildContext context){
    List<Widget> items = [];
    for(var i =0; i < names.length; i++){
      items.add(
        ListTile(
          contentPadding: const EdgeInsets.all(10.0),
          title: Text(names[i], style: TextStyle(
            fontSize: 24.0
          ),),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
            (_) => MyRssPage(
              title: names[i],
              url: links[i],
            )));
          },
        )
      );
    }
    return items;
  }
}
















