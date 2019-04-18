

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/china_shop_app/animation/open_animation.dart';
import './router/application.dart';



class ChinaShopApp extends StatelessWidget {
  final router = Router();
//Routes.configureRoutes(router);
//  Application.router = router;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "China Shop App",
        onGenerateRoute: Application.router.generator,
        theme: ThemeData(
          primaryColor: Colors.pink
        ),
        home: OpenAnimation(),
      ),
    );
  }
}
