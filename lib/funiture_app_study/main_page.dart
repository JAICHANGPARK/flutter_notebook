import 'package:flutter/material.dart';
import 'package:flutter_notebook/funiture_app_study/model/data.dart';

class FunitureAppStudy extends StatelessWidget {
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
  int _currentIndex = 0;

  Widget _buildGradientContainer(double width, double height) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: width * .8,
        height: height / 2,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xfffbfcfd),
                  Color(0xfff2f3f8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 1.0])),
      ),
    );
  }

  Widget _buildAppBar() {
    return Positioned(
      top: 40.0,
      left: 20.0,
      right: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(double height) {
    return Positioned(
      top: height * .2,
      left: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Wooden ArmChair",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Text(
            "Love Earth",
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f3f8),
      body: LayoutBuilder(
        builder: (context, constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _buildGradientContainer(width, height),
              _buildAppBar(),
              _buildTitle(height),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: height * 0.65,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 35, bottom: 60),
                          child: SizedBox(
                            width: 200.0,
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: (index % 2 == 0)
                                            ? Colors.white
                                            : Color(0xff2a2d3f),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, 10.0),
                                              blurRadius: 10.0)
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Image.network(
                                      images[index],
                                      width: 172.5,
                                      height: 199.0,
                                    ),
                                    SizedBox(
                                      height: 12.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            title[index],
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: (index % 2 == 0)
                                                    ? Color(0xff2a2d3f)
                                                    : Colors.white),
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Text(
                                            "NEW SELL",
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: (index % 2 == 0)
                                                    ? Color(0xff2a2d3f)
                                                    : Colors.white),
                                          ),
                                          SizedBox(
                                            height: 50.0,
                                          ),
                                          Text(
                                            price[index] + " \$",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: (index % 2 == 0)
                                                    ? Color(0xff2a2d3f)
                                                    : Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          selectedItemColor: Colors.black,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.panorama_horizontal),
              title: Container(
                height: 0.0,
              )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_border),
                title: Container(
                  height: 0.0,
                )
            ),
          ]),
      floatingActionButton: Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          color: Color(0xfffa7b58),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xfff78a6c).withOpacity(0.6),
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0
            )
          ]
        ),
        child: RawMaterialButton(onPressed: (){},
        shape: CircleBorder(),
        child: Icon(Icons.add,
        size: 35,
        color: Colors.white,),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
















