import 'package:flutter/material.dart';
import 'package:flutter_notebook/basic_for_basic/event_ui/check_box.dart';
import 'package:flutter_notebook/basic_for_basic/sliver_page/main_page.dart';

class BasicForBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Hello"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SliverAppPage();
                }));
              },
              title: Text("Sliver"),
              subtitle: Text("Sliver Apps"),
            ),
            ExpansionTile(title: Text("Next"),
              children: <Widget>[
                ListTile(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>CheckBoxPage()));
                  },
                  title: Text("CheckBox"),
                )
              ],
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
