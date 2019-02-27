

import 'package:flutter/material.dart';
import 'package:flutter_notebook/profile_ui_one/profile_detail.dart';

class ProfilePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool follow = false;
  var followText = 'FOLLOW';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ProfileDetail(imgTag: "user_photo",))
                  );
                },
                child: Hero(
                  tag: "user_photo",
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(image: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text('Dreamwalker', style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Tokyo, Japan', style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                  fontFamily: 'Montserrat'
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Text("Hey There, I'm Dreamwalker :). I fall in love with flutter, flutter is "
                    "Google's mobile UI Framwork for crafting"
                    "High-Quility native experiences on iOS & Android ",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0
                ),),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('100.1k', style:
                          TextStyle(
                            fontSize: 17.0,
                            color: Colors.red,
                            fontFamily: 'Montserrat'
                          ),),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('1', style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.blue,
                          fontSize: 17.0,
                        ),),

                        Text('Following',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                        ),)
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('188,888',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.red,
                          fontSize: 17.0
                        ),),
                        Text('Likes',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey
                        ),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 25.0,),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image:
                    AssetImage("assets/profile/picone.jpeg"),
                    fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 10.0,),
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image:
                    AssetImage('assets/profile/pictwo.jpeg'),
                    fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image:
                    AssetImage(
                      "assets/profile/picthree.jpeg"
                    ),
                    fit: BoxFit.cover),
                  ),
                ),

                SizedBox(width: 10.0,),

                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image:
                    AssetImage(
                        "assets/profile/picfour.jpeg"
                    ),
                        fit: BoxFit.cover),
                  ),
                ),

                SizedBox(width: 10.0,),

                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(image:
                    AssetImage(
                        "assets/profile/picfive.jpeg"
                    ),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.grey.withOpacity(0.2)
                ),
                child: Center(
                  child:Icon(Icons.arrow_back),
                ),
              ),

              InkWell(
                onTap: (){
                  follow  = !follow;
                  if(follow){
                    print('follow');
                    followText = 'FOLLOW';
                  }else{
                    print('Unfollow');
                    followText = 'UNFOLLOW';
                  }
                  setState(() {

                  });


                },
                child: Container(
                  height: 40.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: Center(
                    child: Text(followText,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 15.0
                    ),),
                  ),
                ),
              )

            ],
          )


        ],
      ),

    );
  }
}












