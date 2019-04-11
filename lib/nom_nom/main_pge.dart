

import 'package:flutter/material.dart';


class NomNomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NomNomPage(),
    );
  }
}

class NomNomPage extends StatefulWidget {
  @override
  _NomNomPageState createState() => _NomNomPageState();
}

class _NomNomPageState extends State<NomNomPage> {


  List<String> _places = <String>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _places = new List.generate(100, (i) => 'Restaurant $i');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("NomNom"),
      ),
      body: Center(
        child: new ListView(
          children: _places.map((places)=> new Text((places))).toList();
        ),
      ),
    );
  }
}















