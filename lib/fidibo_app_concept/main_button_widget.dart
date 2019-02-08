import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MainButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {
            Fluttertoast.showToast(
                msg: "button check",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);

          },
          borderRadius: BorderRadius.circular(30.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  border: Border.all(color: Colors.cyan)),
              height: 35.0,
              width: 150.0,
              child: Center(
                child: Text(
                  "Button Text 1",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Fluttertoast.showToast(
                msg: "button check",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          borderRadius: BorderRadius.circular(30.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.cyan,
            ),
            height: 35.0,
            width: 150.0,
            child: Center(
              child: Text(
                "Button Text 2",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
