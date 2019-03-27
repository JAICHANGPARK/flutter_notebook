import 'package:flutter/material.dart';
import 'package:flutter_notebook/rss_parse_app/item_detail_page.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:webfeed/webfeed.dart';


class MyRssPage extends StatefulWidget {
  final String title;
  final String url;

  MyRssPage({@required this.title, @required this.url}) : super();

  @override
  _MyRssPageState createState() =>
      _MyRssPageState(
          title: title,
          url: url
      );
}

class _MyRssPageState extends State<MyRssPage> {
  final String title;
  final String url;

  _MyRssPageState({this.title, this.url}) {
    getItems();
  }

  List<Widget> _items = <Widget>[];

  void getItems() async {
    print(url);
    List<Widget> lists = <Widget>[];
    Response res = await get(url);

    var rssFeed = new RssFeed.parse(res.body);
    for (RssItem item in rssFeed.items) {
      print(item);
      lists.add(
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            title: Text(item.title, style: TextStyle(
                fontSize: 24.0
            ),),
            subtitle: Text(
              item.pubDate
            ),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (_)
              => ItemDetailPage(title: title, url: item.link, item: item,)));
            },
          )
      );
    }
    setState(() {
      _items = lists;
    });
//    setState(() {
//      print(res);
//      print(rssFeed);
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: _items,
        ),
      ),
    );
  }
}











