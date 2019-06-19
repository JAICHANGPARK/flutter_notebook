import 'package:flutter/material.dart';

class AppFreelancers extends StatelessWidget {
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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  Animation<double> _animation2;
  @override
  void initState() {

    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 300, end: 72).animate(_controller)..addListener((){
      setState(() {

      });
    });

  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height / 1.8;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 100,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Client's name",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),),
                  Text("3 current project of 11 in total",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                    ),),
                ],
              ),
              Icon(
                Icons.more_vert,
                size: 42,
                color: Colors.white,
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.3,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60), topLeft: Radius.circular(60)),
            ),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _controller.forward();
                    setState(() {
                      _height = 150;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Project",
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
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
            height: _animation.value,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60))),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    _controller.reverse();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Invoices"),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
//          child: AnimatedContainer(
//            height: 150,
//            curve: Curves.easeIn,
//            decoration: BoxDecoration(
//                color: Colors.red,
//                borderRadius: BorderRadius.only(
//                    topRight: Radius.circular(60),
//                    topLeft: Radius.circular(60))),
//            duration: Duration(seconds: 1),
//          ),
        ),
        Positioned(
          top: 24,
          left: 0,
          child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _controller.forward();
                });
              }),
        ),
      ],
    ));
  }
}
