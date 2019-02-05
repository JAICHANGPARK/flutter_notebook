import 'package:flutter/material.dart';
import 'package:flutter_notebook/planet_app/model/planet.dart';

class MyAppPlanet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      routes: <String, WidgetBuilder>{
//        '/detail': (_) => DetailPage(),
//      },
      home: HomePage(),
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("Live Coding"),
          HomePageBody(),
//          HomePageBody(),
//          HomePageBody(),
        ],
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /***
     * A solution will be to put the ListView inside a Container with a specified height,
     * but, this height could be different on each device.
     * We can calculate it, but there is a better solution. Using a Expanded Widget:
     *
     * The Expanded Widget ocuppies all the remaining space after calculating the size of
     * those widgets with specific size, so, it has the ability to give a proper size to the ListView.
     */
    return Expanded(
      child: Container(
        color: Color(0xFF736AB7),
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => PlanetRowSummary(planets[index]),
                      childCount: planets.length),
//                  itemExtent: 160.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(fontFamily: 'Poppins');
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
    final regularTextStyle = baseTextStyle.copyWith(
        color: Color(0xffb6b2df), fontSize: 9.0, fontWeight: FontWeight.w400);
    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue({String value, String image}) {
      return new Row(children: <Widget>[
        new Image.asset(image, height: 12.0),
        new Container(width: 8.0),
        new Text(planet.gravity, style: regularTextStyle),
      ]);
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16, 16, 16),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(planet.location, style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: _planetValue(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png')),
              new Expanded(
                  child: _planetValue(
                      value: planet.gravity,
                      image: 'assets/img/ic_gravity.png'))
            ],
          )
        ],
      ),
    );

    final planetCard = Container(
      child: planetCardContent,
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
    );

    return GestureDetector(
      onTap: () {
//        Navigator.pushNamed(context, "/detail");
        Navigator.of(context).push(
            PageRouteBuilder(pageBuilder: (_, __, ___) => DetailPage(planet)));
      },
      child: Container(
        height: 120.0,
        margin:
            EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 24.0),
        child: Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }
}

class PlanetRowSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetRowSummary(this.planet, {this.horizontal = true});

  PlanetRowSummary.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    print(horizontal);
    final baseTextStyle = TextStyle(fontFamily: 'Poppins');
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);
    final regularTextStyle = baseTextStyle.copyWith(
        color: Color(0xffb6b2df), fontSize: 9.0, fontWeight: FontWeight.w400);
    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: Image(
          image: AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _planetValue({String value, String image}) {
      return new Row(children: <Widget>[
        new Image.asset(image, height: 12.0),
        new Container(width: 8.0),
        new Text(planet.gravity, style: regularTextStyle),
      ]);
    }

    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(height: 10.0),
          new Text(planet.location, style: subHeaderTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _planetValue(
                      value: planet.distance,
                      image: 'assets/img/ic_distance.png')),
              Container(
                width: 32.0,
              ),
              new Expanded(
                  flex: horizontal ? 1 : 0,
                  child: _planetValue(
                      value: planet.gravity,
                      image: 'assets/img/ic_gravity.png'))
            ],
          )
        ],
      ),
    );

    final planetCard = Container(
      child: planetCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin:
          horizontal ? EdgeInsets.only(left: 46.0) : EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
          color: Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0))
          ]),
    );

    return GestureDetector(
      onTap: horizontal
          ? () => Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => DetailPage(planet),
              transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                  FadeTransition(
                    opacity: animation,
                    child: child,
                  )))
          : null,
      child: Container(
//        height: 120.0, //TODO <<------- Stuck Point
        margin:EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Stack(
          children: <Widget>[
            planetCard,
            planetThumbnail,
          ],
        ),
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF3366FF), Color(0xFF00CCFF)],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),

//          color: Colors.blue
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
              fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(fontFamily: 'Poppins');
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);

    Container _getBackground() {
      return Container(
        child: Image.network(
          planet.picture,
          fit: BoxFit.cover,
          height: 300.0,
        ),
        constraints: BoxConstraints.expand(height: 300.0),
      );
    }

    Container _getGradient() {
      return Container(
        margin: EdgeInsets.only(top: 190.0),
        height: 110.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0x00736ab7),
              Color(0xff736ab7),
            ],
            stops: [0.0, 0.5],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
      );
    }

    Widget _getContent() {
      final _overviewTile = "Overview".toUpperCase();
      return ListView(
        padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          PlanetRowSummary(
            planet,
            horizontal: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _overviewTile,
                  style: headerTextStyle,
                ),
                Separator(),

                Text(planet.description, style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffb6b2df),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          )
        ],
      );
    }

    Container _getToolbar(BuildContext context){
      return Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),

        child: BackButton(color: Colors.white,),
      );
    }

    return new Scaffold(
      body: new Container(
        color: const Color(0xFF736AB7),
        constraints: new BoxConstraints.expand(),

        child: Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),

//        child: new Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Text(planet.name),
//            Hero(
//              tag: "planet-hero-${planet.id}",
//              child: new Image.asset(
//                planet.image,
//                width: 96.0,
//                height: 96.0,
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: Color(0xff00c6ff),
    );
  }
}
