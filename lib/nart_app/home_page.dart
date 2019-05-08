import 'package:flutter/material.dart';
import 'package:flutter_notebook/nart_app/lobby_pagew.dart';
class NartHomes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NartHomePage(),
    );
  }
}

class NartHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NartHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xd9fcfcff),
      appBar: AppBar(
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xd9fcfcff),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
        centerTitle: true,
        title: Text(
          "NART",
          style: TextStyle(
              wordSpacing: 1.5,
              color: Colors.black,
              fontSize: 28,
              letterSpacing: 4),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepOrangeAccent,
              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SafeArea(
                    left: true,
                    right: true,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: Container(
                        height: 120,
                        width: 280,
                        child: Text(
                          "YOUR DREAM JOB IS HERE",
                          style: TextStyle(
                              wordSpacing: 2,
                              fontSize: 34,
                              color: Colors.white,
                              letterSpacing: 5,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 48,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  SafeArea(
                    left: true,
                    right: true,
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Text(
                        "Nat is a platform that helps"
                        "you share your work with the people"
                        "you're seeking for.",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Get started",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Hero(
                    tag: "nart_start",
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>LobbyPage()));
                          },
                          child: Container(

                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 1.2,
                                      blurRadius: 2,
                                      offset: Offset(0.0, 1.0))
                                ]),
                            child: Center(
                              child: Text(
                                "I'M A MEMBER",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Not a member yet?",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                children: <Widget>[
                  Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                        child: Text(
                          "GET AN INVITATION",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              letterSpacing: 2),
                        ),
                      )),
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: double.infinity,
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.deepOrange,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
