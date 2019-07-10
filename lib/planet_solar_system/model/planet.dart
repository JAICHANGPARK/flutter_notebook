import 'package:flutter/material.dart';
class CelestialBody {
  final String name;
  final double diameter;
  final Color color;
  final String description;
  final String intro;
  final String formation;
  final String history;
  final String imgAssetPath;
  final String vidAssetPath;

  CelestialBody(
      {@required this.name,
      @required this.diameter,
      @required this.color,
      this.description,
      this.intro,
      this.formation,
      this.history,
      this.imgAssetPath,
      this.vidAssetPath});
}
