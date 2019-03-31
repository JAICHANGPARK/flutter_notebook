import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final ThemeData kIOSTheme = new ThemeData(
    primaryColor: Colors.grey[100],
    primarySwatch: Colors.orange,
    primaryColorBrightness: Brightness.light);

final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.blueGrey, accentColor: Colors.orangeAccent[400]);

class PlatformAdaptiveAppbar extends AppBar {
  PlatformAdaptiveAppbar(
      {Key key,
      TargetPlatform platform,
      List<Widget> actions,
      Widget title,
      Widget body})
      : super(
            key: key,
            elevation: platform == TargetPlatform.iOS ? 0.0 : 4.0,
            title: title,
            actions: actions);
}

class PlatformAdaptiveButton extends StatelessWidget {
  PlatformAdaptiveButton({Key key, this.child, this.icon, this.onPressed})
      : super(key: key);

  final Widget child;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return CupertinoButton(
        child: child,
        onPressed: onPressed,
      );
    } else {
      return new IconButton(
        icon: icon,
        onPressed: onPressed,
      );
    }
  }
}

class PlatformAdaptiveContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;

  PlatformAdaptiveContainer({Key key, this.child, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: margin,
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? new BoxDecoration(
                border: new Border(top: BorderSide(color: Colors.grey[200])))
            : null);
  }
}

class PlatformChooser extends StatelessWidget {

  final Widget iosChild;
  final Widget defaultChild;

  PlatformChooser({Key key, this.iosChild, this.defaultChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(Theme.of(context).platform == TargetPlatform.iOS) return iosChild;
    return defaultChild;
  }
}















