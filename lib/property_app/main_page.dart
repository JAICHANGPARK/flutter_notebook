import 'package:flutter/material.dart';
import 'package:flutter_notebook/property_app/detail_page.dart';

class PropertyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
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
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              height: 120,
              width: deviceWidth,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Find your",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          "Favorite Property",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "50 Property Available",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 20,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 280,
              width: deviceWidth,
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Top Picks",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 224,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 24, top: 4, bottom: 4, left: 4),
                          width: 190,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2017/03/30/04/14/house-2187170_960_720.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        right: 16,
                                        top: 16,
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.only(left: 16, top: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Camden Town Road Family home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "\$420-600",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
           Container(
             height: 380,
             width: deviceWidth,
             margin: const EdgeInsets.only(left: 24, right: 16, top: 16),
             child: Column(
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     CircleAvatar(
                       backgroundImage: NetworkImage(
                           "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                     ),
                     SizedBox(
                       width: 16,
                     ),
                     Text("Dreamwalker",
                     style: TextStyle(
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                     ),),
                     Spacer(),
                     Text("5 min ago",
                     style: TextStyle(
                       color: Colors.grey
                     ),)
                   ],
                 ),
                 Container(
                   height: 300,
                   child: ListView(
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     children: <Widget>[
                       InkWell(
                         onTap: (){
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context)=>PropertyDetailPage())
                           );
                         },
                         child: Hero(
                           child: Container(
                             height: 240,
                             margin: const EdgeInsets.only(bottom: 16),
                             decoration: BoxDecoration(
                               image: DecorationImage(image:
                               NetworkImage("https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"),
                               fit: BoxFit.cover),
                               borderRadius: BorderRadius.circular(16),
                             ),
                             child: Stack(
                               children: <Widget>[
                                 Positioned(
                                   right: 16,
                                   top: 16,
                                   child: Icon(Icons.bookmark_border,
                                   color: Colors.white,),
                                 )
                               ],
                             ),
                           ), tag: "my_house",
                         ),
                       ),
                       Container(
                         height: 240,
                         margin: const EdgeInsets.only(bottom: 16),
                         decoration: BoxDecoration(
                           image: DecorationImage(image:
                           NetworkImage("https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"),
                               fit: BoxFit.cover),
                           borderRadius: BorderRadius.circular(16),
                         ),
                         child: Stack(
                           children: <Widget>[
                             Positioned(
                               right: 16,
                               top: 16,
                               child: Icon(Icons.bookmark_border,
                                 color: Colors.white,),
                             )
                           ],
                         ),

                       ),
                       Container(
                         height: 240,
                         margin: const EdgeInsets.only(bottom: 16),
                         decoration: BoxDecoration(
                           image: DecorationImage(image:
                           NetworkImage("https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"),
                               fit: BoxFit.cover),
                           borderRadius: BorderRadius.circular(16),
                         ),
                         child: Stack(
                           children: <Widget>[
                             Positioned(
                               right: 16,
                               top: 16,
                               child: Icon(Icons.bookmark_border,
                                 color: Colors.white,),
                             )
                           ],
                         ),

                       )
                     ],
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),
            onPressed: (){},),
            IconButton(icon: Icon(Icons.message),
              onPressed: (){},),
            IconButton(icon: Icon(Icons.search),
              onPressed: (){},),
            IconButton(icon: Icon(Icons.bookmark_border),
              onPressed: (){},),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,

    );
  }
}


























