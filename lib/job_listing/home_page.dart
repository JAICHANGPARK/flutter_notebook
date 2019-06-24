import 'package:flutter/material.dart';

class JobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.grey),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "JOBS4YOU",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 24, right: 92),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: TextField(
              controller: textEditingController,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  hintText: "Search for Job",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.white)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Chip(
                  label: Text(
                    "Design",
                    style: TextStyle(color: Colors.white, letterSpacing: 1.5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Chip(
                  label: Text(
                    "Germany",
                    style: TextStyle(color: Colors.white, letterSpacing: 1.5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Chip(
                  label: Text(
                    "New",
                    style: TextStyle(color: Colors.white, letterSpacing: 1.5),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Spacer(),
                Transform.rotate(
                  angle: 1.56,
                  child: Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
