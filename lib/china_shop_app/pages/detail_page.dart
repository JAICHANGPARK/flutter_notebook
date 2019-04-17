import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

class DetailPage extends StatelessWidget {
  final String goodId;

  DetailPage(this.goodId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('商品详细页'),
      ),
    );
  }
}
