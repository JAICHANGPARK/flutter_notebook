import 'package:flutter/material.dart';
import 'package:flutter_notebook/wechat_sticker_clone/sticker_detail.dart';

class WeChatStickerPackClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Sticker Packs",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return _buildListItem();
//              return Padding(
//                padding: EdgeInsets.all(8.0),
//                child: Center(
//                  child: Text(
//                    "Index $index",
//                    style: TextStyle(color: Colors.black),
//                  ),
//                ),
//              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey,
              );
            },
            itemCount: 20),
      ),
    );
  }

  Widget _buildListItem() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 8.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Romantic Couple",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "WAStikerApp * 238 Ko",
                    style: TextStyle(fontSize: 14.0),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/grinning-face_1f600.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-open-mouth-and-cold-sweat_1f605.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/rolling-on-the-floor-laughing_1f923.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/smiling-face-with-heart-shaped-eyes_1f60d.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/google/146/grinning-face-with-one-large-and-one-small-eye_1f92a.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 30.0,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StickerDetailPage()));
            },
            icon: Icon(
              Icons.add,
              size: 50.0,
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }
}
