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
                  image: DecorationImage(image:
                  AssetImage("assets/undraw_modern_professional_yt9h.png"))
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 2) - 100 ,
            left: 0,
            right: 0,
            child: Container(
              height: (MediaQuery.of(context).size.height / 2 ) + 100,
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFE1E2EA),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                  )
                ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Align(
                      alignment: Alignment.topCenter,
                      child: Text("\$", textAlign: TextAlign.start,)),
                      Text("798.19", style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontWeight: FontWeight.bold
                      ),),
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
                        onPressed: (){},
                        icon: Icon(Icons.more_vert,
                        size: 30,),
                      )
                    ],
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


















