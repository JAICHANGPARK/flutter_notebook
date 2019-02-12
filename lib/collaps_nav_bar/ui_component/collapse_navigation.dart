import 'package:flutter/material.dart';
import 'package:flutter_notebook/collaps_nav_bar/model/navigation_model.dart';
import 'package:flutter_notebook/collaps_nav_bar/themes.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 250.0;
  double minWidth = 60.0;

  bool isCollapsed = false;

  AnimationController _animationController;
  Animation<double> widthAnimation;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));

    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  Widget getWidget(context, widget) {
    return Container(
      width: widthAnimation.value,
      color: drawerBackgroundColor,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          CollapsingListTile(
            title: "Dreamwalker",
            icon: Icons.person,
            animationController: _animationController,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, counter) {
                return CollapsingListTile(
                  title: navigationItems[counter].title,
                  icon: navigationItems[counter].icon,
                  animationController: _animationController,
                );
              },
              itemCount: navigationItems.length,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
                isCollapsed
                    ? _animationController.forward()
                    : _animationController.reverse();
              });
            },
            child: AnimatedIcon(

              icon: AnimatedIcons.close_menu,
              progress: _animationController,
              color: Colors.white,
              size: 50.0,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, widget) => getWidget(context, widget));
//    return Container(
//      width: widthAnimation.value,
//      color: drawerBackgroundColor,
//      child: Column(
//        children: <Widget>[
//          SizedBox(
//            height: 50.0,
//          ),
//          CollapsingListTile(
//            title: "Dreamwalker",
//            icon: Icons.person,
//          ),
//          Expanded(
//            child: ListView.builder(
//              itemBuilder: (context, counter) {
//                return CollapsingListTile(
//                  title: navigationItems[counter].title,
//                  icon: navigationItems[counter].icon,
//                );
//              },
//              itemCount: navigationItems.length,
//            ),
//          ),
//          InkWell(
//            onTap: (){
//              setState(() {
//                isCollapsed = !isCollapsed;
//                isCollapsed ? _animationController.forward()
//                    : _animationController.reverse();
//              });
//            },
//            child: Icon(
//              Icons.chevron_left,
//              color: Colors.white,
//              size: 50.0,
//            ),
//          ),
//
//          SizedBox(
//            height: 50.0,
//          ),
//        ],
//      ),
//    );
  }
}

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;

  CollapsingListTile({this.title, this.icon, this.animationController});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {

  Animation<double> _widthAnimation, _sizedBoxAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _widthAnimation = Tween<double>(
        begin: 250, end: 70.0
    ).animate(widget.animationController);

    _sizedBoxAnimation = Tween<double>(
        begin: 10, end: 0.0
    ).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _widthAnimation.value,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        children: <Widget>[
        Icon(
        widget.icon,
        color: Colors.white30,
        size: 38.0,
      ),
      SizedBox(
        width: _sizedBoxAnimation.value,
      ),

      (_widthAnimation.value >= 220) ? Text(
        widget.title,
        style: listTitleDefaultTextStyle,
      ) :
      Container(),
      ],
    ),);
  }
}
