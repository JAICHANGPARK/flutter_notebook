

import 'package:flutter/material.dart';

class PizzaAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pizza App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: "slabo"
      ),
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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 50, right: 30),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  titleBar(),
                  tabs()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
Widget titleBar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 70,),
          Text(
            "Feature",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 50
            ),
          ),
          Text("Food",style: TextStyle(
            fontSize: 50
          ),)
        ],
      )
    ],
  );
}
Widget tabs(){
  return Container(
    height: 580,
    width: double.infinity,
    child: DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(child:
            Container(
              color: Colors.transparent,
              child: SafeArea(child: Column(
                children: <Widget>[
                  TabBar(
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(top: 15),
                    indicatorColor: Colors.transparent,
                    labelStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      fontFamily: "slabo"
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black26,
                    unselectedLabelStyle:  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w200,
                        fontFamily: "slabo"
                    ),
                    tabs: <Widget>[
                      Container(
                        child: Text("Pizza"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("Rolls"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("Burgers"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text("Sandwiches"),
                      ),
                    ],
                  )
                ],
              )),
            )
            , preferredSize: Size.fromHeight(20)),
      ),
      body: TabBarView(children: <Widget>[
        pizzaShowCase(),
        Center(
          child: Text("Rolls Tab",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15
          ),),
        ),
        Center(
          child: Text("Burger Tab",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15
            ),),
        ),
        Center(
          child: Text("Sandwiches  Tab",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15
            ),),
        )
      ]),
    )),
  );
}
Widget pizzaShowCase(){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
//        itemCount: ,
        itemBuilder: (context, index){


    }),
  );
}
class ListOfPizzas extends StatelessWidget {
  final Color foreground;
  final Color background;
  final double price;
  final String name;
  final String image;
  final Pizza pizzaObject;


  ListOfPizzas(this.foreground, this.background, this.price, this.name,
      this.image, this.pizzaObject);

  @override
  Widget build(BuildContext context) {

    return Container();
  }
}























