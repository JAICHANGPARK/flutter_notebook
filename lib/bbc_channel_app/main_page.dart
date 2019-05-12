import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_notebook/bbc_channel_app/model/features.dart';
import 'package:flutter_notebook/bbc_channel_app/model/lobby.dart';

enum MenuState { open, close }

class MenuController extends ChangeNotifier {
  MenuState state = MenuState.close;
  double percentOpen = 0.0;

  open() {
    state = MenuState.open;
    percentOpen = 1.0;
    notifyListeners();
  }

  close() {
    state = MenuState.close;
    percentOpen = 0.0;
    notifyListeners();
  }

  toggle() {
    if (state == MenuState.open) {
      close();
    } else if (state == MenuState.close) {
      open();
    }
  }
}

class BBCChannelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget homeContents(BuildContext context) {
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
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredLists.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            top: 16,
                          ),
                          child: Container(
                            height: 120,
                            width: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Colors.red,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        featuredLists[index].imgPath),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            featuredLists[index].title,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Row(
                            children: <Widget>[
                              Text(
                                featuredLists[index].channel,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 16),
                              ),
                              Text(
                                featuredLists[index].ep,
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
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

  @override
  Widget build(BuildContext context) {
    return MenuPage();
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        actions: <Widget>[],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                height: 26,
                width: 26,
                color: Colors.white,
                child: Text("B", style: TextStyle(
                  color: Colors.red,
                  fontSize: 24
                ),
                textAlign: TextAlign.center,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                height: 26,
                width: 26,
                color: Colors.white,
                child: Text("B", style: TextStyle(
                    color: Colors.red,
                    fontSize: 24
                ),
                  textAlign: TextAlign.center,),
              ),
            ),
            Container(
              height: 26,
              width: 26,
              color: Colors.white,
              child: Text("C", style: TextStyle(
                  color: Colors.red,
                  fontSize: 24
              ),
                textAlign: TextAlign.center,),
            )
          ],
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
      body: ,
    );
  }
}












