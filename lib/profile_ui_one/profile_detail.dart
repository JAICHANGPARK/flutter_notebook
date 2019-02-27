import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  final String imgTag;
  ProfileDetail({@required this.imgTag});

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: widget.imgTag,
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Text('Thanks for Watching Today\'s Live Coding',
                  style: TextStyle(
                    fontSize: 20.0
                  ),
                    )
              ],
            ),
          )
        ],
      ),
    );
  }
}
