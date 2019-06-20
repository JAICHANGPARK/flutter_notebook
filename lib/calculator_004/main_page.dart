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
    textInput= TextEditingController();
    textInput.text  = "";
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
              decoration: BoxDecoration(

              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(memory,
                  style: TextStyle(
                    color: Colors.grey
                  ),),
                  Text(userInput,
                  style: TextStyle(
                    color: Colors.black
                  ),),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(60),
                                  bottomRight: Radius.circular(60))
                                ),
                                child: Center(
                                  child: Text("AC",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32
                                  ),),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Center(
                                child: Text("AC",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32
                                ),),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all()
                      ),
                    ),
                  )
                ],
              ),
            ),

          ),

        ],
      ),
    );
  }
}
















