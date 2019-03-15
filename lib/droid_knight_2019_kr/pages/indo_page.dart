import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/app_res/strings.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/custom_style.dart';

import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  static const double _sectionAllPadding = 20.0;
  static const double _sectionTopPadding = 10.0;
  static const double _contentsAllpadding = 10.0;

  @override
  Widget build(BuildContext context) {

     TextStyle _titleTextStyle = TextStyle(
      fontSize: 19.0,
      color: Color(0xff77e448),
      fontWeight: FontWeight.w400,
    );

     TextStyle _subtitleTextStyle = TextStyle(
      fontSize: 13.0,
      color: Color(0xFFededed),
      fontWeight: FontWeight.w200,
    );

     TextStyle _buttomTextStyle = TextStyle(
      fontSize: 15.0,
      color: Color(0xFFededed),
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      body: Container(
        color: Color(0xff112030),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(_sectionAllPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    Strings.INFO_TAB_IMAGES_PATH_DK_MAIN_GRAPHIC,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.asset(
                    Strings.INFO_TAB_IMAGES_PATH_DK_TITLE,
                    fit: BoxFit.fitWidth,
                  )
                ],
              ),
              Text(
                Strings.INFO_TAB_MAIN_TITLE,
                style: TextStyle(
                    fontSize: 24.0,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w600),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: _sectionTopPadding),
              ),

              Text(Strings.INFO_TAB_SECTION_TITLE_DROID_KNIGHTS,
              style: _titleTextStyle,),
              Text(Strings.INFO_TAB_SECTION_SUB_TITLE_INTRO,
              style: _subtitleTextStyle,),

              MaterialButton(
                onPressed: () => launch('https://droidknights.github.io/2019/'),
                color: Color(0xff77e448),
                child: Text("홈페이지로 이동", style: _buttomTextStyle,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: _sectionTopPadding),
              ),

              Text(Strings.INFO_TAB_SECTION_TITLE_PROGRAM,
                style: _titleTextStyle,),
              Text(Strings.INFO_TAB_SECTION_SUB_TITLE_INTRO2,
                style: _subtitleTextStyle,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(_contentsAllpadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(Strings.INFO_TAB_TITLE_CODE_REVIEW,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffededed),
                            fontWeight: FontWeight.w600
                          ),),
                          Text(Strings.INFO_TAB_TITLE_CODE_REVIEW_CONTENT,
                          style: _subtitleTextStyle,)
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(_contentsAllpadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(Strings.INFO_TAB_TITLE_CODE_LAB,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Color(0xffededed),
                                fontWeight: FontWeight.w600
                            ),),
                          Text(Strings.INFO_TAB_TITLE_CODE_LAB_CONTENT,
                            style: _subtitleTextStyle,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: _sectionTopPadding),
              ),

              Text(Strings.INFO_TAB_SECTION_TITLE_LOCATION,
                style: _titleTextStyle,),
              Text(Strings.INFO_TAB_SECTION_SUB_TITLE_LOCATION,
                style: _subtitleTextStyle,),

              Container(
                padding: EdgeInsets.all(_contentsAllpadding),
                alignment: Alignment.topLeft,
                width: 300.0,
                height: 200.0,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: _sectionTopPadding),
              ),
              Text(Strings.INFO_TAB_SECTION_TITLE_SPONSOR,
                style: _titleTextStyle,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(_contentsAllpadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => launch(Strings.INFO_TAB_URL_SPONSOR_PRD),
                            child: Image.network(
                                "https://droidknights.github.io/2019/static/media/banner.76bec31e.png",
                            width: 80.0,
                            fit: BoxFit.fitWidth,),
                          ),
                          SizedBox(height: 8.0,),
                          GestureDetector(
                            onTap: () => launch(Strings.INFO_TAB_URL_SPONSOR_PRD),
                            child: Image.network(
                              "https://droidknights.github.io/2019/static/media/banner.0ddeb0f4.png",
                              width: 80.0,
                              fit: BoxFit.fitWidth,),
                          ),
                          SizedBox(height: 8.0,),
                          GestureDetector(
                            onTap: () => launch(Strings.INFO_TAB_URL_SPONSOR_PRD),
                            child: Image.network(
                              "https://droidknights.github.io/2019/static/media/banner.b4594f6d.png",
                              width: 80.0,
                              fit: BoxFit.fitWidth,),
                          ),
                          SizedBox(height: 8.0,),
                          GestureDetector(
                            onTap: () => launch(Strings.INFO_TAB_URL_SPONSOR_PRD),
                            child: Image.network(
                              "https://droidknights.github.io/2019/static/media/banner.f213d29a.png",
                              width: 80.0,
                              fit: BoxFit.fitWidth,),
                          ),
                          SizedBox(height: 8.0,),
                          GestureDetector(
                            onTap: () => launch(Strings.INFO_TAB_URL_SPONSOR_PRD),
                            child: Image.network(
                              "https://droidknights.github.io/2019/static/media/banner.7e2fbc8b.png",
                              width: 80.0,
                              fit: BoxFit.fitWidth,),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
