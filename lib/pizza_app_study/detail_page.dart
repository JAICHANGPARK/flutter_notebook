import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_notebook/pizza_app_study/models/pizza.dart';

class Details extends StatelessWidget {
  final Pizza pizzaObject;

  Details(this.pizzaObject);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ForegroundContent(
                  pizzaObject: pizzaObject,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForegroundContent extends StatelessWidget {
  final Pizza pizzaObject;

  ForegroundContent({@required this.pizzaObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 50),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
