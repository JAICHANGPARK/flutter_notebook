import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle productRowItemPrice = TextStyle(
      color: Color(0xff8e8e93), fontSize: 13, fontWeight: FontWeight.w300);
  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle deliveryTimeLabel =
      TextStyle(color: Color(0xFFc2c2c2), fontWeight: FontWeight.w300);
  static const TextStyle deliveryTime =
      TextStyle(color: CupertinoColors.inactiveGray);
  static const Color productRowDivider = Color(0xFFd9d9d9);
  static const Color scaffoldBackground = Color(0xfff0f0f0);
  static const Color searchBackground = Color(0xffe0e0e0);
  static const Color searchCursorColor = Color.fromRGBO(0, 122, 255, 1);
  static const Color SearchIconColor = Color.fromRGBO(128, 128, 128, 1);
}
















