import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FamilyPetsApp extends StatelessWidget {
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
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings_overscan),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Found pets",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter pet name",
                      hintStyle: TextStyle(fontSize: 20),
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: 40,
                      )),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 24, right: 8),
              height: 220,
              width: 30,
              decoration: BoxDecoration(),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    top: 16,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 200,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 8,
                    right: 8,
                    bottom: 8,
                    child: Container(
                      height: 200,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 0,
                    right: 16,
                    bottom: 16,
                    child: Container(
                      height: 200,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 24),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(border: Border.all()),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 2, color: Colors.black),
                          bottom: BorderSide(width: 2),
                          left: BorderSide(width: 2),
                          right: BorderSide(width: 2))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
