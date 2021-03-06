import 'package:flutter/material.dart';
import 'package:flutter_notebook/basic_for_basic/dialog_and_sheet/alert_dialog.dart';
import 'package:flutter_notebook/basic_for_basic/dialog_and_sheet/modal_bottom_sheet.dart';
import 'package:flutter_notebook/basic_for_basic/dialog_and_sheet/simple_dialog.dart';
import 'package:flutter_notebook/basic_for_basic/dialog_and_sheet/simple_is_best.dart';
import 'package:flutter_notebook/basic_for_basic/event_ui/check_box.dart';
import 'package:flutter_notebook/basic_for_basic/event_ui/drop_down.dart';
import 'package:flutter_notebook/basic_for_basic/event_ui/radio_page.dart';
import 'package:flutter_notebook/basic_for_basic/event_ui/slider_page.dart';
import 'package:flutter_notebook/basic_for_basic/paint_ui/draw_circle_page.dart';
import 'package:flutter_notebook/basic_for_basic/paint_ui/image_drawing.dart';
import 'package:flutter_notebook/basic_for_basic/paint_ui/text_paragraph_page.dart';
import 'package:flutter_notebook/basic_for_basic/sliver_page/main_page.dart';
import 'package:flutter_notebook/basic_for_basic/sqlite_app/sqlite_main.dart';

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
            UserAccountsDrawerHeader(
              accountEmail: Text("Dreamwalker"),
              accountName: Text("User"),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SliverAppPage();
                }));
              },
              title: Text("Sliver"),
              subtitle: Text("Sliver Apps"),
            ),
            ExpansionTile(
              title: Text("User Select Widget"),
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckBoxPage()));
                  },
                  title: Text("CheckBox & SW"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RadioButtonPage()));
                  },
                  title: Text("Radio"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DropDownPage()));
                  },
                  title: Text("Dropdown"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SliderPage()));
                  },
                  title: Text("Slider"),
                )
              ],
            ),
            ExpansionTile(
              title: Text("Dialog & Bottom sheet"),
              children: <Widget>[
                ListTile(
                  title: Text("Dialog"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SimpleCustomDialog()));
                  },
                ),
                ListTile(
                  title: Text("AlertDialog"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlertDialogPage()));
                  },
                ),
                ListTile(
                  title: Text("Single Choose Dialog"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SimpleOptionDialogPage()));
                  },
                ),
                ListTile(
                  title: Text("Simple Modal Bottom Sheet"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ModalBottomSheets()));
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: Text("Paint "),
              children: <Widget>[
                ListTile(
                  title: Text("Draw Circle"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrawCirclePage()));
                  },
                ),
                ListTile(
                  title: Text("Text Paragraph"),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TextParagraphPage()));
                  },
                ),
                ListTile(
                  title: Text("Image ?"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImageDrawingPage())),
                )
              ],
            ),
            ListTile(
              title: Text("Database"),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SqlitePage())),
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Coding....Shop App ",
          style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
