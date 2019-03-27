import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart';
import 'package:html/dom.dart' as dom;

class ItemDetailPage extends StatefulWidget {
  final String title;
  final String url;
  final RssItem item;

  ItemDetailPage(
      {@required this.title, @required this.url, @required this.item});

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState(item: item);
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  final RssItem item;

  _ItemDetailPageState({this.item});

  Widget _widget = Text("wait...");
  String htmlText = "";
  String newsImgUrl;
  String _detailLink;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getItem();
  }

  Future<void> getItem() async {
    print(item.link);
    List<String> imgUrl = [];
    var res = await get(item.link);

    dom.Document doc = dom.Document.html(res.body);
    dom.Element hBody = doc.querySelector('.tpcNews_summary');
    dom.Element thumbnail = doc.querySelector('.tpcHeader_thumb_img');
    dom.Element detailLink = doc.querySelector('.tpcNews_detailLink');
    print(detailLink.outerHtml);
    print(detailLink.querySelector('a').attributes['href']);
    print(hBody.text);
    print(thumbnail.attributes['style']);
    imgUrl = thumbnail.attributes['style'].split(': ');
    for (String s in imgUrl) {
      print(s);
    }
    var imgThumbnail = imgUrl[1].substring(5, imgUrl[1].length - 3);
    setState(() {
      htmlText = hBody.text;
      newsImgUrl = imgThumbnail;
      _detailLink = detailLink.querySelector('a').attributes['href'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: Center(
          child: (newsImgUrl != null && htmlText != null)
              ? ListView(
                  children: <Widget>[
                    Image.network(
                      newsImgUrl,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      htmlText,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              : CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await launch(_detailLink);
        },
        child: Icon(
          Icons.open_in_new,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
