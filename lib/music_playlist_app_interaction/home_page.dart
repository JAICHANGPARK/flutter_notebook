import 'package:flutter/material.dart';
import 'package:flutter_notebook/music_playlist_app_interaction/detail_page.dart';
import 'package:flutter_notebook/music_playlist_app_interaction/model.dart';

class MusicPlayListAppInteraction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
      },
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
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: <Widget>[
              Text(
                "Featured",
                style: TextStyle(color: Colors.black),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.view_stream),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        drawer: Drawer(),
        body: ListView.builder(
            itemCount: cardLists.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayListDetailPage()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 32),
                  height: 440,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(24)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 16,
                        right: 16,
                        top: 16,
                        child: Row(
                          children: <Widget>[
                            Hero(
                              tag: "user_icon",
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all()),
                                child: Container(
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(cardLists[index].name),
                                Text(cardLists[index].date),
                              ],
                            ),
                            Spacer(),
                            Hero(
                              tag: "user_add",
                              child: InkWell(
                                child: Container(
                                  height: 42,
                                  width: 42,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        top: 86,
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
//                    border: Border.all(),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                cardLists[index].title,
                                style: TextStyle(
                                  fontSize: 28,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${cardLists[index].playCount}   ${cardLists[index].playTime}",
                                style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 1.5,
//                          fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Icon(Icons.block),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, border: Border.all()),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 32,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Icon(Icons.thumb_up),
                            SizedBox(
                              width: 32,
                            ),
                            Icon(
                              Icons.volume_off,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
