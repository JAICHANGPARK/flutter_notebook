import 'package:flutter/material.dart';

class ChatAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text(
          "Friends",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "What's new",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 210,
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/207"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2)
                        ]),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Jemmy\nLogachev",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/202"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2)
                        ]),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Beli\nJonson",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/201"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2)
                        ]),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Jemmy\nLogachev",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://picsum.photos/203"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2)
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "10 Online Friends",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 8,),
            Container(
              height: 80,
              padding: const EdgeInsets.all(8),
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          top: 6,
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent Conversation",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              height: 400,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Lisa"),
                                SizedBox(width: 200,),

                                Text("8:45AM")
                              ],
                            ),
                            Text("What's up? ")
                          ],
                        )

                      ],
                    ),
                  ),
                  Divider(),
                  
                ],
              ),
            )
//            Container(
//              height: MediaQuery.of(context).size.height,
//              width: MediaQuery.of(context).size.width,
//              child: ListView(
//                scrollDirection: Axis.vertical,
//                shrinkWrap: true,
//                children: <Widget>[
//                  Container(
//                    height: 60,
//                    child:
//                    Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 30,
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Text("Lisa"),
//                                Expanded(
//                                  child: Container(),
//                                ),
//                                Text("8:45AM"),
//                              ],
//                            )
//                          ],
//                        )
//                      ],
//                    ),
//                  )
//                ],
//              ),
//            )








          ],
        ),
      ),
    );
  }
}










