


import 'package:flutter/material.dart';


class NavigationModel{
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});


}

List<NavigationModel> navigationItems =[
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
  NavigationModel(title: "Errors", icon: Icons.error),
  NavigationModel(title: "Find", icon: Icons.search),
  NavigationModel(title: "My Alert", icon: Icons.notifications),
  NavigationModel(title: "Setting", icon: Icons.settings),
];


