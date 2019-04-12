import 'package:flutter/material.dart';
import 'package:flutter_notebook/nom_nom/place_widget.dart';
import 'places.dart' as places;
import 'dart:ui';

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
  var placeList = <places.Place>[];

  _getPlaces(double lat, double lng) async {
    final stream = await places.getPlaces(lat, lng);
    stream.listen((place) => setState(() => placeList.add(place)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _places = new List.generate(100, (i) => 'Restaurant $i');
    _getPlaces(34.0195, -118.4912);
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
            children: placeList.map((place) => new PlaceWidget(place)).toList(),
      ),
      ),
    );
  }
}













