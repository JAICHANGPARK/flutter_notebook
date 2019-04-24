import 'package:flutter/material.dart';
import 'package:flutter_notebook/login_sample_app/ui/form_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPageStudyClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(0.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.network(
                    "https://github.com/devefy/Flutter-Login-Page-UI/blob/master/assets/image_01.png?raw=true"),
              ),
              Expanded(
                child: Container(),
              ),
              Image.network(
                  "https://github.com/devefy/Flutter-Login-Page-UI/blob/master/assets/image_02.png?raw=true")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.network(
                        "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",
                        width: ScreenUtil.getInstance().setWidth(110),
                        height: ScreenUtil.getInstance().setHeight(110),
                      ),
                      Text("DREAMWALKER",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: ScreenUtil.getInstance().setSp(46),
                        letterSpacing: 0.6,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180.0),
                  ),
                  FormCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
