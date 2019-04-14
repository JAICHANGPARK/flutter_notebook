import 'dart:async';

import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_notebook/elements_app/model/element_data.dart';

const kRowCount = 10;
const kContentSize = 64.0;
const kGutterWidth = 2.0;
const kGutterInset = EdgeInsets.all(kGutterWidth);

class ElementsApp extends StatelessWidget {
  final Future<List<ElementData>> gridList;

  ElementsApp(this.gridList);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      brightness: Brightness.dark,
      accentColor: Colors.grey,
    );
    return MaterialApp(
      title: 'Elements',
      theme: theme,
      home: HomePage(gridList),
    );
  }
}

class HomePage extends StatefulWidget {
  final Future<List<ElementData>> gridList;

  HomePage(this.gridList);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.gridList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        title: Text("Element"),
      ),
      body: FutureBuilder(
        builder: (_, snapshots) => snapshots.hasData
            ? _buildTable(snapshots.data)
            : Center(
                child: CircularProgressIndicator(),
              ),
        future: widget.gridList,
      ),
    );
  }

  Widget _buildTable(List<ElementData> elements) {
    final tiles = elements
        .map((element) => element != null
            ? ElementTile(element)
            : Container(
                color: Colors.black38,
                margin: kGutterInset,
              ))
        .toList();

    return SingleChildScrollView(
      child: SizedBox(
        height: kRowCount * (kContentSize + (kGutterWidth * 2)),
        child: GridView.count(
          crossAxisCount: kRowCount,
          children: tiles,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class ElementTile extends StatelessWidget implements PreferredSizeWidget {
  final ElementData element;
  final bool isLarge;

  ElementTile(this.element, {this.isLarge = false});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kContentSize * 1.5);

  @override
  Widget build(BuildContext context) {
    final tileText = <Widget>[
      Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          '${element.number}',
          style: TextStyle(fontSize: 10.0),
        ),
      ),
      Text(
        element.symbol,
        style: Theme.of(context).primaryTextTheme.headline,
      ),
      Text(
        element.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textScaleFactor: isLarge ? 0.65 : 1,
      )
    ];
    final tile = Container(
      margin: kGutterInset,
      width: kContentSize,
      height: kContentSize,
      foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(colors: element.colors),
          backgroundBlendMode: BlendMode.multiply),
      child: RawMaterialButton(
        onPressed: !isLarge ? () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_)=> DetailPage(element))
        ) : null,
        fillColor: Colors.grey[800],
        disabledElevation: 10.0,
        padding: kGutterInset * 2.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: tileText,
        ),
      ),
    );
    return Hero(
      tag: 'hero-${element.symbol}',
      flightShuttleBuilder: (_, anim, __, ___, ____) => ScaleTransition(
            scale: anim.drive(Tween(begin: 1, end: 1.75)),
            child: tile,
          ),
      child: Transform.scale(
        scale: isLarge ? 1.75 : 1,
        child: tile,
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final ElementData element;

  DetailPage(this.element);

  @override
  Widget build(BuildContext context) {
    final _listItems = <Widget>[
      ListTile(
        leading: Icon(Icons.category),
        title: Text(element.category.toUpperCase()),
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text(element.extract),
        subtitle: Text(element.source),
      ),
      ListTile(
        leading: Icon(Icons.fiber_smart_record),
        title: Text(element.atomicWeight),
        subtitle: Text('Atomic Weight'),
      ),
    ].expand((widget) => [widget, Divider()]).toList();
    return Scaffold(
      backgroundColor: Color.lerp(Colors.grey[850], element.colors[0], 0.07),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: (){

            },
          )
        ],
        backgroundColor: Color.lerp(Colors.grey[850], element.colors[1], 0.2),
        bottom: ElementTile(element, isLarge: true,),

      ),
      body: ListView(
        padding: EdgeInsets.only(top: 24),
        children: _listItems,
      ),
    );
  }
}
















