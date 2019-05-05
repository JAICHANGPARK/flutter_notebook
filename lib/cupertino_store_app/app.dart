import 'package:flutter/cupertino.dart';


class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoStoreHomePage(),
    );
  }
}
class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Cupertino Store"),
      ),
      child: const SizedBox(),

    );
  }
}
