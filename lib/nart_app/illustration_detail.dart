import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/model/artist.dart';
import 'package:flutter/cupertino.dart';

class IllustrationDetailPage extends StatefulWidget {
  @override
  _IllustrationDetailPageState createState() => _IllustrationDetailPageState();
}

class _IllustrationDetailPageState extends State<IllustrationDetailPage> {
  var imgPath = partnersLists[0].imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.add, color: Colors.white),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.inbox,
                color: Colors.white,
              ),
              title: Text(""))
        ],
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              color: Colors.white,
              child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      leading: Container(
                        decoration: BoxDecoration(color: Colors.black),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
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
                      centerTitle: true,
                      title: Text(
                        "Illustration",
                        style:
                            TextStyle(color: Colors.grey, letterSpacing: 2.0),
                      ),
                    ),
                    body: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 36, top: 24),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"))),
                                    )),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Dreamwalker",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tokyo, Japan",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Text(
                                    "FAVORITE",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 36, top: 24),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  imgPath = partnersLists[1].imgPath;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(17),
                                child: Container(
                                  height: 400,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Colors.blueGrey,
                                      image: DecorationImage(
                                          image: NetworkImage(imgPath),
                                          fit: BoxFit.cover)),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 0,
                                        top: 0,
                                        child: IconButton(
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Material(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: 8,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "ABOUT",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Professional Information",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("PROJECTS"),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 210,
              width: MediaQuery.of(context).size.width,
              color: Colors.pink.withOpacity(0.1),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: partnersLists.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(17),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(17),
                                      topRight: Radius.circular(17),
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            partnersLists[index].imgPath),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    partnersLists[index].title
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
