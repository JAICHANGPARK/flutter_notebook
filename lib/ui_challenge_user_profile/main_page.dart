import 'package:flutter/material.dart';
import 'package:flutter_notebook/ui_challenge_user_profile/user_data.dart';

class UIChallengeDay05UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => UserDetailPage(),
      },
    );
  }
}

class UserDetailPage extends StatefulWidget {
  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  User _user = User(
      userName: "Time Waton",
      isOnline: true,
      reviews: "182",
      userJob: "UX/UI Designer",
      userLocation: "Austin, TX",
      userPay: "30.00",
      userProfileImagePath:
          "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg",
      userRate: 4.6,
      userRateNumber: "4.6",
      userType: "Professional");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "freelancers".toUpperCase(),
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 8,
                    right: 8,
                    top: 16,
                    bottom: 8,
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(_user.userProfileImagePath),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.6),
                                BlendMode.darken)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 34,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                    ),
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      _user.userType,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                _user.isOnline
                                    ? Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.fiber_manual_record,
                                            color: Colors.green,
                                          ),
                                          Text(
                                            'Online',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      )
                                    : Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.fiber_manual_record,
                                            color: Colors.red,
                                          ),
                                          Text(
                                            'Offline',
                                            style: TextStyle(color: Colors.red),
                                          )
                                        ],
                                      )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    right: 8,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 5,
                                spreadRadius: 5)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                _user.userName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(_user.userJob)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              Text(_user.userLocation)
                            ],
                          ),
                          Text("\$ ${_user.userPay} USD / hour")
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 32,
                    bottom: 24,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _user.userRateNumber,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            "(${_user.reviews} Reviews)",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(top: 24),
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: <Widget>[

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(34))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 24),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(34))),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 4, bottom: 52),
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                spreadRadius: 4
                              )
                            ]
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 4, bottom: 52),
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 4, right: 4, bottom: 52),
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text("HIRE ME",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                      
                    ),
                    
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
