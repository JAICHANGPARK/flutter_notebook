import 'package:flutter/material.dart';
import 'package:flutter_notebook/electric_scooter_app/detail_page.dart';

class ElectricScooter extends StatelessWidget {
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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>DetailPage())
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(48),
                    bottomLeft: Radius.circular(48),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/c7ae0f77818573.5c9296565fe4e.png"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16,
                      top: 32,
                      child: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 32,
                      top: 64,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Autonomous",
                            style: TextStyle(
                                color: Colors.white,
//                              fontWeight: FontWeight.bold,
                                fontSize: 28,
                                letterSpacing: 1.2),
                          ),
                          Text(
                            "Scooter",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                letterSpacing: 1.2),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 48,
                left: 32,
                right: 16
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Desire to redefine",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      fontWeight: FontWeight.bold,
                       ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text("\$ 260",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 78,
                        width: 92,
                        decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      SizedBox(width: 32,),
                      Container(
                        height: 78,
                        width: 92,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      SizedBox(width: 32,),
                      Container(
                        height: 78,
                        width: 92,
                        decoration: BoxDecoration(
                         border: Border.all(),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(left: 32, right: 32,
              bottom: 32, top: 16),
              decoration: BoxDecoration(

                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Center(
                child: Text("Add to Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






















