import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  @override
  _DropDownPageState createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  String _message;
  String _selected = 'One';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = "OK";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            _message,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: DropdownButton<String>(
              isDense: true,
              hint: Text("sds"),
              isExpanded: true,
              value: _selected,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
              ),
              items: [
                DropdownMenuItem(
                  child: Text("One"),
                  value: "One",
                ),
                DropdownMenuItem(
                  child: Text("Two"),
                  value: "Two",
                ),
                DropdownMenuItem(
                  child: Text("Three"),
                  value: "Three",
                )
              ],
              onChanged: (String value) => popupSelected(value),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          
          Align(
            alignment: Alignment.topRight,
            child:PopupMenuButton(
              onSelected: (String value) => popupSelected(value),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(child: Text("One"),
                  value: "One",),
                  PopupMenuItem(child: Text("Two"),
                    value: "Two",),
                  PopupMenuItem(child: Text("Three"),
                    value: "Three",),
                ]),

          )
        ],
      ),
    );
  }

  void popupSelected(String value) {
    setState(() {
      print(value);
      _selected = value;
      _message = _selected;
    });
  }
}
