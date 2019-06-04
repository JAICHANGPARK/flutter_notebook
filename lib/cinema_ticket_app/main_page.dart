import 'package:flutter/material.dart';

class CinemaTicketApp extends StatelessWidget {
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
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        filled: false,
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Now Playing",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
//                  color: Colors.blue
                    ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 1.8,
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://m.media-amazon.com/images/M/MV5BMjQ2ODIyMjY4MF5BMl5BanBnXkFtZTgwNzY4ODI2NzM@._V1_.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, left: 24),
                      width: MediaQuery.of(context).size.width / 1.4,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://lumiere-a.akamaihd.net/v1/images/uk_the-lion-king_teaser-poster_r_e423d0a5.jpeg?region=0,0,1152,1620"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 48,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blueGrey,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text("IMDb"),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("8.4")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Aladdin: 2019",
                style: TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold),
              ),
              Text(
                "Action, Crime, Thriiler",
                style: TextStyle(letterSpacing: 2),
              ),
              SizedBox(height: 32,),
              Text(
                "Premieres",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
