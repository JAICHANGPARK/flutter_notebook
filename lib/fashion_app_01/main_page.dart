import 'package:flutter/material.dart';
import 'package:flutter_notebook/fashion_app_01/detail_page.dart';
import 'package:flutter_notebook/fashion_app_01/sources.dart';

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.network(
                ImageSources.HOME_TOP_IMAGE,
                fit: BoxFit.cover,
                height: 400.0,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Sample Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      "Sample Description",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'for 2019 Spring/Summer',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    SizedBox(
                      height: 175.0,
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                          DetailPage())
                        );
                      },
                      mini: true,
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Image.network(
                ImageSources.HOME_BOTTOM_IMAGE,
                fit: BoxFit.cover,
                height: 400.0,
              ),
              _homePageTextWidget(
                  topTitle: "Sample Name",
                  description: "Sample Description",
                  detail: "for 2019 Spring/Summer"),
            ],
          )
        ],
      ),
    );
  }

  Widget _homePageTextWidget(
      {String topTitle, String description, String detail}) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 45.0,
          ),
          Text(
            topTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            detail,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
