import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  final Widget child;
  final GestureTapCallback onTap;

  Splash({Key key, this.child, this.onTap}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Tween<double> radiusTween;
  Tween<double> borderWidthTween;
  Animation<double> radiusAnimation;
  Animation<double> borderWidthAnimation;
  AnimationStatus _status;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((listener) {
            _status = listener;
          });

    radiusTween = Tween<double>(
      begin: 0,
      end: 50,
    );
    radiusAnimation = radiusTween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));

    borderWidthTween = Tween<double>(
      begin: 25,
      end: 1,
    );
    borderWidthAnimation = borderWidthTween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));

    super.initState();
  }

  void _handleTap() {
    _animationController.forward(from: 0);
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SplashPaint(
        radius: radiusAnimation.value,
        borderWidth: borderWidthAnimation.value,
        status: _status,
      ),
      child: GestureDetector(
        child: widget.child,
        onTap: _handleTap,
      ),
    );
  }
}

class SplashPaint extends CustomPainter {
  final double radius;
  final double borderWidth;
  final Paint blackPaint;
  final AnimationStatus status;

  SplashPaint(
      {@required this.radius,
      @required this.borderWidth,
      @required this.status})
      : blackPaint = Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = borderWidth;

  @override
  void paint(Canvas canvas, Size size) {
    var offSet = Offset(size.width / 2, size.height / 2);
    if (status == AnimationStatus.forward) {
      canvas.drawCircle(offSet, radius, blackPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
