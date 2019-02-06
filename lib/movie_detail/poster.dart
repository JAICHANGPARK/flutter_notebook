import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  static const POSTER_RATIO = 0.7;

  final String posterUrl;
  final double height;

  Poster(this.posterUrl, {this.height = 100.0});

  @override
  Widget build(BuildContext context) {
    var width = POSTER_RATIO * height;

    return Material(
      borderRadius: BorderRadius.circular(7.0),
      elevation: 2.0,
      child: Image.network(
        posterUrl,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );
  }
}
