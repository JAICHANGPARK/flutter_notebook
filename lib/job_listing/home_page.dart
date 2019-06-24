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
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Container(
            height: 60,
            width: deviceWidth,
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
            width: deviceWidth,
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
            width: deviceWidth,
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Senier Designer",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Tokyo, JPN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      Container(
                        height: 16,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16))),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16))),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16))),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16))),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
