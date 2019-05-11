import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Lobby {
  String imgPath;
  String time;

  Lobby({this.imgPath, this.time});
}

class Featured {
  String imgPath;
  String title;
  String channel;
  String ep;

  Featured({this.imgPath, this.title, this.channel, this.ep});
}

var mainList = [
  Lobby(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0779sm0.jpg",
      time: "1 hour before live"),
  Lobby(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p078v8vy.jpg",
      time: "1 hour before live"),
  Lobby(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0761lhj.jpg",
      time: "1 hour before live")
];

var featuredLists = [
  Featured(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0779sm0.jpg",
      title: "Line of Duty",
      channel: "BBC One",
      ep: "Series5: Episode 1"),
  Featured(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0779sm0.jpg",
      title: "Line of Duty",
      channel: "BBC One",
      ep: "Series5: Episode 1"),
  Featured(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0779sm0.jpg",
      title: "Line of Duty",
      channel: "BBC One",
      ep: "Series5: Episode 1"),
  Featured(
      imgPath: "https://ichef.bbci.co.uk/images/ic/1536x864/p0779sm0.jpg",
      title: "Line of Duty",
      channel: "BBC One",
      ep: "Series5: Episode 1")
];

class BBCChannelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red, size: 42),
        backgroundColor: Colors.black,
        title: Image.network(
          "https://cdn.iconscout.com/icon/free/png-256/bbc-2-461774.png",
          fit: BoxFit.fitWidth,
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.red,
              size: 42,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            CarouselSlider(
              height: 400,
              initialPage: 0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 10),
              items: mainList.map((lobby) {
                return Builder(
                  builder: (context) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 6, right: 6),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                            color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(lobby.imgPath),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  
                                    color: Colors.black.withOpacity(0.4)),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        lobby.time,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            letterSpacing: 1.2,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Featured on BBC",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "More",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: featuredLists.length,
                  itemBuilder: (context, index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 16,),
                          child: Container(
                            height: 120,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.red,
                              image: DecorationImage(image:
                              NetworkImage(featuredLists[index].imgPath),
                              fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(featuredLists[index].title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Row(
                            children: <Widget>[
                              Text(
                                featuredLists[index].channel,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16
                                ),
                              ),
                              Text(
                                featuredLists[index].ep,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
              }),
            )
            
          ],
        ),
      ),
    );
  }
}


















