import 'package:flutter/material.dart';

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatePage(),
    );
  }
}

class CalculatePage extends StatefulWidget {
  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController textEditingController;
  TextEditingController textInput;
  String memory = "";
  String userInput = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
    textInput = TextEditingController();
    textInput.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      memory,
                      style: TextStyle(color: Colors.grey,
                          fontSize: 42,
                          letterSpacing: 1.5),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userInput,
                      style: TextStyle(color: Colors.black,
                      fontSize: 52,
                      letterSpacing: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput = "";
                                  memory = "";
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(60),
                                        bottomRight: Radius.circular(60))),
                                child: Center(
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "/",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '7';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                                onTap: (){
                                  setState(() {
                                    userInput += '8';
                                  });
                                },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '9';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "X",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '4';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  userInput += '5';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '6';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 32),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '1';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  userInput += '2';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '3';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                               setState(() {
                                 if(userInput != ""){
                                   memory += userInput + "+";
                                   userInput = "";
                                 }

                               });

                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  userInput += '0';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  userInput += '.';
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    ".",
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60),
                                      bottomLeft: Radius.circular(60)
                                    )
                                  ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent,

                                ),
                                child: Center(
                                  child: Text(
                                    "=",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 32),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
