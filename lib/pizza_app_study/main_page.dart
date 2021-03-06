

import 'package:flutter/material.dart';
import 'package:flutter_notebook/pizza_app_study/detail_page.dart';
import 'package:flutter_notebook/pizza_app_study/models/pizza.dart';

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
      bottomNavigationBar: CustomBottomBar(),
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
        itemCount: pizzaList.pizzas.length,
        itemBuilder: (context, index){
          return ListOfPizzas(
            name: pizzaList.pizzas[index].name,
            image: pizzaList.pizzas[index].image,
            price: pizzaList.pizzas[index].price,
            background: pizzaList.pizzas[index].background,
            foreground: pizzaList.pizzas[index].foreground,
            pizzaObject: pizzaList.pizzas[index],
          );
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


  ListOfPizzas({this.foreground, this.background, this.price, this.name,
    this.image, this.pizzaObject});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>
            Details(pizzaObject))
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 35,
            horizontal: 20),
            width: 225,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 180,
                child: Image.asset(image),),
                SizedBox(height: 30,),
                RichText(
                  softWrap: true,
                  text: TextSpan(
                    style: TextStyle(
                      color: foreground,
                      fontSize: 25,
                      fontFamily: 'slabo'
                    ),
                    children: [
                      TextSpan(text: name),
                      TextSpan(
                        text: "\nPizza",
                        style: TextStyle(
                          fontWeight: FontWeight.w800
                        )
                      )
                    ]
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("\$$price",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: foreground,
                        fontFamily: "slabo"
                      ),),
                    ),
                    StatefulFavIcon(
                      foreground: foreground,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 40,)
      ],
    );
  }
}
class StatefulFavIcon extends StatefulWidget {
  final Color foreground;
  StatefulFavIcon({this.foreground});

  @override
  _StatefulFavIconState createState() => _StatefulFavIconState();
}

class _StatefulFavIconState extends State<StatefulFavIcon> {
  bool _isFav;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isFav = false;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _isFav = !_isFav;
        });
      },
      child: Icon(
        _isFav ? Icons.favorite : Icons.favorite_border,
        color: widget.foreground,
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  final double _size = 60;
  final double _padding = 17;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height:  _size + 15,
            width: _size + 15,
            padding: EdgeInsets.all(_padding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",
              fit: BoxFit.cover,),
            ),
          ),
          Container(
            height: _size,
            width: _size,
            padding: EdgeInsets.all(_padding),
            child: Image.asset("assets/pizza/home_icon.png",
            fit: BoxFit.contain,),
          ),
          Container(
            height: _size,
            width: _size,
            padding: EdgeInsets.all(_padding),
            child: Image.asset("assets/pizza/search_icon.png",
              fit: BoxFit.contain,),
          ),
          Container(
            height: _size,
            width: _size,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50)
            ),
            padding: EdgeInsets.all(_padding),
            child: Image.asset("assets/pizza/bag_icon.png",
              fit: BoxFit.contain,),
          )
        ],
      ),
      ),
    );
  }
}























