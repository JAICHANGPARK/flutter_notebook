import 'package:flutter/material.dart';

class PropertyDetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<PropertyDetailPage> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Hero(
                tag: "my_house",
                child: Container(
                  height: deviceHeight / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"),
                        fit: BoxFit.cover),
                  ),
                )),
          ),
          Positioned(
            left: 16,
            top: 32,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                }),
          ),
          Positioned(
            top: deviceHeight / 2 - 80,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 8),
              height: deviceHeight / 2 + 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      topLeft: Radius.circular(32))),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 4,
                      width: 84,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 16, left: 16, top: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Dreamwalker",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                  fontSize: 18),
                            ),
                            Text(
                              "Boss Life",
                              style: TextStyle(
                                  color: Colors.black26, letterSpacing: 2),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Spacer(),
                        Container(
                          height: 34,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "For Sale",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 32,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "St.James Park 921b, London W1T,"
                          "England",
                          style: TextStyle(fontSize: 24, letterSpacing: 1.2),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "\$1,499 + \$20",
                          style: TextStyle(fontSize: 28),
                        ),
                        Divider(
                          height: 32,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("Size"), Text("1,048 sq.ft")],
                        ),
                        Divider(
                          height: 32,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("Badrooms"), Text("8")],
                        ),
                        Divider(
                          height: 32,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("Bath"), Text("4")],
                        ),
                        Divider(
                          height: 32,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 48,
            right: 16,
            child: Icon(Icons.bookmark_border,
            color: Colors.white,),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "More Indormation",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.green,
              ),
              iconSize: 32,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
