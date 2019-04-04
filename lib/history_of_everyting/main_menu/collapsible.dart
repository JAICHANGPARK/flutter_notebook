

import 'package:flutter/material.dart';


class Collapsible extends StatefulWidget {
  final Widget child;
  final bool isCollapsed;

  Collapsible({this.child, this.isCollapsed, Key key})
  :super(key:key)
  ;

  @override
  _CollapsibleState createState() => _CollapsibleState();
}

class _CollapsibleState extends State<Collapsible>
with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  static final Animatable<double> _sizeTween = Tween<double>(
    begin: 0.0,
    end: 1.0
  );

  Animation<double> _sizeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration:
    const Duration(milliseconds: 200));
    final CurvedAnimation curve = CurvedAnimation(parent: _animationController, curve:
    Curves.fastOutSlowIn);

    _sizeAnimation = _sizeTween.animate(curve);
    if(!widget.isCollapsed){
      _animationController.forward(from: 1.0);
    }
  }
  @override
  void didUpdateWidget(Collapsible oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if(oldWidget.isCollapsed != widget.isCollapsed){
      if(widget.isCollapsed){
        _animationController.reverse();
      }else{
        _animationController.forward();
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 0.0,
      axis: Axis.vertical,
      sizeFactor: _sizeAnimation,
      child: widget.child,
    );
  }








}
