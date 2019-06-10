import 'package:flutter/material.dart';

class BiddingArtifacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(left: 28),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "upcoming",
                    style: TextStyle(
                      fontSize: 38,
                    ),
                  ),
                  Text(
                    "artifacts",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      height: 280,
                      width: 260,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 10)
                          ]),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 140,
                            width: 140,
                            child: Image.network(
                              "https://www.preciousmetals.com/media/catalog/product/cache/1/image/326x/9df78eab33525d08d6e5fb8d27136e95/a/t/atg-stater-obv-trans_1.png",
                              fit: BoxFit.cover,
                              width: 120,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("ancient coins", style: TextStyle(
                                color: Colors.red
                              ),),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 16),
                            width: double.infinity,
                            height: 90,
                            child: Text("Alexander the Molossian",style: TextStyle(
                              color: Colors.black,
                              fontSize: 38
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("BC 334-322", style: TextStyle(
                                fontSize: 18
                              ),),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 90,
                            width: double.infinity,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left:16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('current bid'),
                                      Text('43K', style: TextStyle(
                                        fontSize: 28
                                      ),)
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: IconButton(
                                    icon: Icon(Icons.favorite_border),
                                    onPressed: (){},
                                  ),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    height: 280,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 10)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          child: Image.network(
                            "https://www.preciousmetals.com/media/catalog/product/cache/1/image/326x/9df78eab33525d08d6e5fb8d27136e95/a/t/atg-stater-obv-trans_1.png",
                            fit: BoxFit.cover,
                            width: 120,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("ancient coins", style: TextStyle(
                                color: Colors.red
                            ),),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          width: double.infinity,
                          height: 90,
                          child: Text("Alexander the Molossian",style: TextStyle(
                              color: Colors.black,
                              fontSize: 38
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("BC 334-322", style: TextStyle(
                                fontSize: 18
                            ),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 90,
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('current bid'),
                                    Text('43K', style: TextStyle(
                                        fontSize: 28
                                    ),)
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: (){},
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    height: 280,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 10)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 140,
                          width: 140,
                          child: Image.network(
                            "https://www.preciousmetals.com/media/catalog/product/cache/1/image/326x/9df78eab33525d08d6e5fb8d27136e95/a/t/atg-stater-obv-trans_1.png",
                            fit: BoxFit.cover,
                            width: 120,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("ancient coins", style: TextStyle(
                                color: Colors.red
                            ),),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          width: double.infinity,
                          height: 90,
                          child: Text("Alexander the Molossian",style: TextStyle(
                              color: Colors.black,
                              fontSize: 38
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("BC 334-322", style: TextStyle(
                                fontSize: 18
                            ),),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 90,
                          width: double.infinity,
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('current bid'),
                                    Text('43K', style: TextStyle(
                                        fontSize: 28
                                    ),)
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: (){},
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), title: Text("wish")),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity), title: Text("profile")),
          ]),
    );
  }
}
