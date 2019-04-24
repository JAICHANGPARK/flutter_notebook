import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(500),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0)
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                  fontSize: ScreenUtil.getInstance().setSp(45),
                  fontFamily: 'Montserrat',
                  letterSpacing: 0.6),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(30),
            ),
            Text(
              "Username",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(26),
                fontFamily: 'Montserrat',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(24.0),
                  )),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(30),
            ),
            Text(
              "Password",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(26),
                fontFamily: 'Montserrat',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(24.0),
                  )),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setWidth(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: Text("Forgot ?"),
                        action: SnackBarAction(label: "Undo", onPressed: (){}),));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontSize: ScreenUtil.getInstance().setSp(28)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}














