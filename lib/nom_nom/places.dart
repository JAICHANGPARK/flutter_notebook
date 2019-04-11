import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:flutter_notebook/nom_nom/keys.dart';
import 'package:http/http.dart' as http;

var key = Keys.key;

void main() {
  getPlaces(33.9850, -118.4695);
}

class Place {
  final String name;
  final double rating;
  final String address;

  Place.fromJson(Map jsonMap)
      : name = jsonMap['name'],
        rating = jsonMap['rating'],
        address = jsonMap['address'];
}

getPlaces(double lat, double lng) {
  getPlacesFromNetwork(lat, lng);
}

getPlacesFromNetwork(double lat, double lng) async {
  var url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json' +
      '?location=$lat,$lng' +
      '&radius=500&type=restaurant' +
      '&key=$key';
  var client = new http.Client();
  var streamRes = await client.send(new http.Request('get', Uri.parse(url)));

//    http.get(url).then((res)=> print(res.body));
  return streamRes.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((jsonBody) => (jsonBody as Map)['results'])
      .map((jsonPlace) => new Place.fromJson(jsonPlace));

}














