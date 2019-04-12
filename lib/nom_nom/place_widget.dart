import 'package:flutter/material.dart';
import 'places.dart' as places;

class PlaceWidget extends StatelessWidget {
  final places.Place place;

  PlaceWidget(this.place);

  @override
  Widget build(BuildContext context) {
    var ratingColor = Color.lerp(Colors.red, Colors.green, place.rating / 5);
    var listTile = new ListTile(
      leading: new CircleAvatar(
        child: new Text(place.rating.toString()),
        backgroundColor: ratingColor,
      ),
      title: new Text(place.name),
      subtitle: new Text(place.address ?? "unknown ..."), // if null
      isThreeLine: false,
    );
    return Dismissible(
      key: new Key(place.name),
      onDismissed: (dir) => dir == DismissDirection.startToEnd
          ? print('you favorieted ${place.name}')
          : print("You dismissed ${place.name}"),
      background: new Container(
        color: Colors.green,
      ),
      secondaryBackground: new Container(
        color: Colors.red,
      ),
      child: listTile,
    );
  }
}
