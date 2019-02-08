import 'package:flutter/material.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_book_stroy.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_button_widget.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_header.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_header_test.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_mid_info.dart';

class FidiboMainPage extends StatelessWidget {
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
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        leading: Row(
//          children: <Widget>[
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//          ],
//        ),
//        actions: <Widget>[],
//      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24.0,
            ),

            MainHeaderTest(),
//            MainHeader(),
            SizedBox(
              child: Container(
                color: Colors.white,
              ),
              height: 16.0,
            ),
            MainMidInformation(),

            SizedBox(
              height: 16.0,
            ),

            MainButtonWidget(),

            SizedBox(
              height: 16.0,
            ),

            MainBookStory(),

            SizedBox(
              height: 16.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Divider(
                height: 1.0,
                color: Colors.grey,
              ),
            ),

            SizedBox(
              height: 16.0,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'Other Books',
                    style: Theme.of(context)
                        .textTheme
                        .subhead
                        .copyWith(fontSize: 18.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  height: 240,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left : 8.0, right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2017/07/22/20/41/girl-2529908_960_720.jpg",
                            width: 120.0,
                            height: 200,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left : 8.0, right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2017/07/22/20/41/girl-2529908_960_720.jpg",
                            width: 120.0,
                            height: 200,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left : 8.0, right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2017/07/22/20/41/girl-2529908_960_720.jpg",
                            width: 120.0,
                            height: 200,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left : 8.0, right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2017/07/22/20/41/girl-2529908_960_720.jpg",
                            width: 120.0,
                            height: 200,
                          ),
                        ),
                      )
                    ],
                  ),
                )

//                ListView(
//                  padding: EdgeInsets.only(top: 8.0, right: 20.0),
//                  scrollDirection: Axis.horizontal,
//                  children: <Widget>[
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 20.0),
//                      child: Text(
//                        'Photos',
//                        style: Theme.of(context).textTheme.subhead.copyWith(fontSize: 18.0),
//                      ),
//                    ),
//
//
//                  ],
//                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
