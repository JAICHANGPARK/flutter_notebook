

import 'package:flutter/material.dart';

class ChinaShopApp extends StatelessWidget {
  final router = Router();

  Application.router = router;
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
