import 'package:flutter/material.dart';
import 'package:flutter_notebook/national_app/detail_page.dart';

class NGApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              color: Colors.white,
              height: 50,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                      "https://1000logos.net/wp-content/uploads/2017/04/National-Geographic-Logo.png",
                      fit: BoxFit.fitWidth,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        "Guides",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 38,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Stories",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 34,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Videos",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 34,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Source",
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.7),
                          fontSize: 34,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                          DetailPage())
                        );
                      },
                      child: Hero(
                        tag: "detail_id",
                        child: Container(
                          height: 180,
                          width: 320,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/11/07/11/51/china-1031557_960_720.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 18.0, left: 16.0, right: 16.0),
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "China".toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        child: Image.network(
                                          "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/155/flag-for-china_1f1e8-1f1f3.png",
                                          scale: 0.5,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16.0, bottom: 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Hong Kong",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    Text(
                                      "COMPLETE GUIDE",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          letterSpacing: 4.0,
                                          wordSpacing: 1.5),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      height: 180,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken),
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2016/08/25/23/47/barcelona-1620957_960_720.jpg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 18.0, left: 16.0, right: 16.0),
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "spain".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/155/flag-for-spain_1f1ea-1f1f8.png",
                                      scale: 0.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, bottom: 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Barcelona".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: 'Montserrat'),
                                ),
                                Text(
                                  "COMPLETE GUIDE",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: 4.0,
                                      wordSpacing: 1.5),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 280,
                            width: double.infinity / 2,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.4),
                                        BlendMode.darken),
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/09/29/10/04/oslo-963590_960_720.jpg"),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Norway".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Oslo".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Montserrat'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 280,
                            width: double.infinity / 2,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2018/05/17/11/38/sculpture-3408348_960_720.jpg"),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "GERMANY".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Berlin".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Montserrat'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 280,
                            width: double.infinity / 2,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.4),
                                        BlendMode.darken),
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2018/11/28/03/48/washignton-dc-3842912_960_720.jpg"),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "USA".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Washington,D.C".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Montserrat'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 280,
                            width: double.infinity / 2,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.4),
                                        BlendMode.darken),
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/02/19/11/51/louvre-1210004__340.jpg"),
                                    fit: BoxFit.cover)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "FRANCE".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "paris".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: 'Montserrat'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
//          child: Container(
//            height: double.infinity,
//            width: double.infinity,
//            child: Stack(
//              children: <Widget>[
//                Positioned(
//                  top: 0,
//                  left: 0,
//                  right: 0,
//                  child: Container(
//                    margin: EdgeInsets.only(top: 30),
//                    color: Colors.white,
//                    height: 50,
//                    width: 300,
//                    child: Padding(
//                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: <Widget>[
//                          Image.network(
//                            "https://1000logos.net/wp-content/uploads/2017/04/National-Geographic-Logo.png",
//                            fit: BoxFit.fitWidth,
//                          ),
//                          CircleAvatar(
//                            backgroundImage: NetworkImage(
//                                "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//                Positioned(
//                  top: 100,
//                  left: 8,
//                  child: Container(
//                    height: 60,
//                    width: MediaQuery.of(context).size.width,
//                    color: Colors.red,
//                  ),
//                ),
//                Positioned(
//                  top: 180,
//                  left: 8,
//                  child: Container(
//                    height: 240,
//                    width: MediaQuery.of(context).size.width,
//                    color: Colors.blue,
//                  ),
//                ),
//                Positioned(
//                  top: 436,
//                  left: 8,
//                  right: 8,
//                  child: Container(
//                    height: 600,
//                    width: MediaQuery.of(context).size.width,
//                    color: Colors.green,
//                  ),
//                )
//              ],
//            ),
//          ),
        ),
      ),
    );
  }
}
