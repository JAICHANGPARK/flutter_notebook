import 'package:flutter/material.dart';

class DeibbbleProfileApp01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/undraw_modern_professional_yt9h.png"))),
            ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height / 2) - 100,
            left: 0,
            right: 0,
            child: Container(
              height: (MediaQuery.of(context).size.height / 2) + 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFE1E2EA),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "\$",
                              textAlign: TextAlign.start,
                            )),
                        Text(
                          "798.19",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("your balance"),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.credit_card,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "**** **** 2897",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              letterSpacing: 2,
                              fontSize: 32),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 240,
            left: 0,
            right: 0,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 32,
                  left: 32,
                  bottom: 32
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Shared", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24
                        ),),
                        SizedBox(width: 8,),
                        Text("Members",style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 180,
                      width: double.infinity,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orangeAccent,

                                ),
                              ),
                              SizedBox(height: 16,),
                              Text("Dash D.", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),),
                              SizedBox(width: 8,),
                              Text("Card Owner",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orangeAccent,

                                ),
                              ),
                              SizedBox(height: 16,),
                              Text("Dash D.", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),),
                              SizedBox(width: 8,),
                              Text("Card Owner",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orangeAccent,

                                ),
                              ),
                              SizedBox(height: 16,),
                              Text("Dash D.", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),),
                              SizedBox(width: 8,),
                              Text("Card Owner",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.orangeAccent,

                                ),
                              ),
                              SizedBox(height: 16,),
                              Text("Dash D.", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),),
                              SizedBox(width: 8,),
                              Text("Card Owner",style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


















