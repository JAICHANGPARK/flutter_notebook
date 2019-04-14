import 'package:flutter/material.dart';

class ElementData{
  final String name, category, symbol, extract, source, atomicWeight;
  final int number;
  final List<Color> colors;

  ElementData.fromJson(Map<String, dynamic> json):
      name = json['name'],
      category = json['category'],
      symbol = json['symbol'],
      extract = json['extract'],
      source = json['source'],
      atomicWeight = json['atomic_weight'],
      number = json['number'],
      colors = (json['colors'] as List).map((value)=> Color(value)).toList();

}