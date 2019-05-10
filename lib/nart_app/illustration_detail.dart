import 'package:flutter/material.dart';

class IllustrationDetailPage extends StatefulWidget {
  @override
  _IllustrationDetailPageState createState() => _IllustrationDetailPageState();
}

class _IllustrationDetailPageState extends State<IllustrationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true,
        left: true,
        right: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.black
                ),
                child: IconButton(icon: Icon(Icons.arrow_back,
                color: Colors.white,), onPressed: (){
                  Navigator.pop(context);
                }),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_horiz,
                  color: Colors.grey,),
                  onPressed: (){},
                )
              ],
              centerTitle: true,
              title: Text(
                "Illustration",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Image.network(src),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}













