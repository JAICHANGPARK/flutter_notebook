import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/model/artist.dart';

class IllustrationDetailPage extends StatefulWidget {
  @override
  _IllustrationDetailPageState createState() => _IllustrationDetailPageState();
}

class _IllustrationDetailPageState extends State<IllustrationDetailPage> {
  var imgPath = partnersLists[0].imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
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
                                  borderRadius: BorderRadius.circular(30),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
