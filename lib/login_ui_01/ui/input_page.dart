import 'package:flutter/material.dart';

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3),
        ),
        Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40, bottom: 10.0),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 16, color: Color(0xff999a9a)),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    InputWidget(
                      topRight: 30,
                      bottomRight: 0.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Text(
                                "Enter your Email id to Continue...",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color(0xffa0a0a0), fontSize: 12),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                gradient: LinearGradient(
                                    colors: signInGradients,
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight)),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            roundRectButton("Let's get Started", signInGradients, false),
            roundRectButton("Create an Account", signUpGradients, false),

          ],
        )
      ],
    );
  }

  Widget roundRectButton(
      String title, List<Color> gradient, bool isEndIconVisible) {
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(
            alignment: Alignment(1.0, 0.0),
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  gradient: LinearGradient(
                      colors: gradient,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                padding: EdgeInsets.only(top: 16, bottom: 16),
              ),
              Visibility(
                visible: isEndIconVisible,
                child: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget({this.topRight, this.bottomRight}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40, bottom: 30),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Material(
          elevation: 10,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(bottomRight),
                  topRight: Radius.circular(topRight))),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Dreamwalker.com",
                  hintStyle:
                      TextStyle(color: Color(0xffe1e1e1), fontSize: 14.0)),
            ),
          ),
        ),
      ),
    );
  }
}
