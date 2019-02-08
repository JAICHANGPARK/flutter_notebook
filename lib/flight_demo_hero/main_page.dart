


import 'package:flutter/material.dart';
import 'package:flutter_notebook/flight_demo_hero/theme.dart';
import 'package:flutter_notebook/flight_demo_hero/ticket_list_page.dart';

class FlightDemoHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return TicketListPage();
  }
}

