import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 24,
              top: 24,
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(Icons.arrow_back, color: Colors.green,),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Murakami(村上隆)', style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'
                  ),),
                  SizedBox(height: 16,),
                  Text('Species of succulent flowering', style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'
                  ),),
                  Text('plant in the family Crassulaceae.', style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'
                  ),)
                ],
              ),
            ),
            Positioned(
              left: 64,
              right: 64,
              top: MediaQuery.of(context).size.height / 3,
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image: NetworkImage(''
                      'https://scontent-icn1-1.cdninstagram.com/vp/71eea1a08b85a2953a2404cde58303bf/5D95CCFE/t51.2885-15/sh0.08/e35/s640x640/62433173_444090009742591_8924982487502989069_n.jpg?_nc_ht=scontent-icn1-1.cdninstagram.com'),
                  fit: BoxFit.cover)
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Growing"),
                    SizedBox(height: 32,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.skip_previous,  size: 32, color: Colors.green,),
                        SizedBox(width: 32,),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                spreadRadius: 2
                              )
                            ]
                          ),
                          child: Center(
                            child: Icon(Icons.play_arrow, color: Colors.green, size: 40,),
                          ),
                        ),
                        SizedBox(width: 32,),
                        Icon(Icons.skip_next, size: 32,color: Colors.green,)
                      ],
                    ),
                    SizedBox(height: 32,),
                    Text("08:45 / 01:12")
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}












