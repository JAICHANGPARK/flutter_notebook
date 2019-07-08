import 'package:flutter/material.dart';
import 'package:flutter_notebook/railyatri/state_management/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class Railyatri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: MainPage(),
        builder: (context) => BottomNavigationBarProvider(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedTab = [
    HomePage(),
    SearchPage(),
    OffersPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: selectedTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.redAccent),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food"))
          ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {},
        label: Text("Menu"),
        isExtended: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search Page"),
      ),
    );
  }
}

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Offers Page"),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart Page"),
      ),
    );
  }
}
