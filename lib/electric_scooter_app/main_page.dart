import 'package:flutter/material.dart';

class ElectricScooter extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(48),
                  bottomLeft: Radius.circular(48),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/c7ae0f77818573.5c9296565fe4e.png"),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 16,
                    top: 32,
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 32,
                    top: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Autonomous",
                          style: TextStyle(
                              color: Colors.white,
//                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              letterSpacing: 1.2),
                        ),
                        Text(
                          "Scooter",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              letterSpacing: 1.2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 32,),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 32,
                right: 32
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Desire to redefine"),
                  Text("\$ 260"),
                  Row(
                    children: <Widget>[
                      
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
