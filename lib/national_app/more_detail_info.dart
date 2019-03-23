import 'package:flutter/material.dart';

class MoreMoreDetailPage extends StatefulWidget {
  @override
  _MoreMoreDetailPageState createState() => _MoreMoreDetailPageState();
}

class _MoreMoreDetailPageState extends State<MoreMoreDetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _animation = Tween<double>(begin: 400, end: 250).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn))
      ..addListener(() {
//        print(_animation.value);
        setState(() {});
      });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Hero(
                tag: "more_info",
                child: Container(
                  height: (MediaQuery.of(context).size.height / 2) - 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2019/01/02/04/59/hong-kong-3908078_960_720.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: _animation.value,
              left: 0,
              right: 0,
              child: Container(
                height: (MediaQuery.of(context).size.height / 2) + 90,
                width: double.infinity,
               
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left : 24.0, top: 24.0),
                      child: Text("Hong Kong museum",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left : 24.0, top: 8.0),
                      child: Text("of graphic design",style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 24.0,),
                    Padding(
                      padding: const EdgeInsets.only(left : 24.0, top: 8.0, right: 24.0),
                      child: Opacity(
                        opacity: 1.0,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                            " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                            "ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                            "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                            "Excepteur sint occaecat cupidatat non proident,"
                            " sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(color: Colors.grey,
                        wordSpacing: 2.0,
                        letterSpacing: 2.0),),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
