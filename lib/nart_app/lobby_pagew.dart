import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/model/art.dart';

class LobbyPage extends StatefulWidget {
  @override
  _LobbyPageState createState() => _LobbyPageState();
}

const Color appBgColor = Color(0xffd9fcfc);

class _LobbyPageState extends State<LobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {}),
        elevation: 0.0,
        backgroundColor: appBgColor,
        centerTitle: true,
        title: Text(
          "NART",
          style: TextStyle(
              wordSpacing: 1.5,
              color: Colors.black,
              fontSize: 28,
              letterSpacing: 4),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: 6,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Let your",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                        Text(
                          "art do the talking",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "collections".toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Container(
                height: 380,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 380,
                          width: 210,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16)),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 250,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16),
                                        topLeft: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            artItems[index].imgPath),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                      color: Colors.black),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          artItems[index].title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          artItems[index].subTitle,
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                              fontSize: 14),
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
                    }),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "job offers".toUpperCase(),
              style: TextStyle(letterSpacing: 2),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,

              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16,
                    right: 8, top: 8, bottom: 8),
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              "https://pbs.twimg.com/profile_images/898670702173147136/pToNfHs6_400x400.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Adobe")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              "https://pbs.twimg.com/profile_images/898670702173147136/pToNfHs6_400x400.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Adobe")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              "https://pbs.twimg.com/profile_images/898670702173147136/pToNfHs6_400x400.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Adobe")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width / 5,
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              "https://cdn.freebiesupply.com/logos/large/2x/dribbble-icon-1-logo-png-transparent.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Dribbble")
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
