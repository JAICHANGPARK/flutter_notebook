import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset("assets/scooter.JPG",fit: BoxFit.cover,),
          ),
          Positioned(
            top: 24,
            left: 24,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white,
                  )
              ),
              child: Center(
                child: Icon(Icons.arrow_back_ios,color:
                  Colors.white,),
              ),
            ),
          ),
          Positioned(
            top: 118,
            left: 112,
            child: Transform.rotate(
              angle: 0.8,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 16,
                  ),
                ),
              ),

            ),
          ),
          Positioned(
            bottom: 118,
            left: 48,
            child: Transform.rotate(
              angle: 0.8,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 16,
                  ),
                ),
              ),

            ),
          ),
          Positioned(
            bottom: 200,
            right: 104,
            child: Transform.rotate(
              angle: 0.8,
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    radius: 16,
                  ),
                ),
              ),

            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Column(
              children: <Widget>[
                Icon(Icons.keyboard_arrow_up,
                color: Colors.white,size: 42,),
                Text("Upswipte to more",
                style: TextStyle(
                  color: Colors.white
                ),)
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 270,
            child: Container(
              height: 80,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 8,),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(
                      child: Icon(Icons.bluetooth),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("12.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),),
                      Text("Battery power",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



















