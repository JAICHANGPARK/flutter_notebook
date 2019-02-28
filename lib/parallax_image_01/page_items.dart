import 'package:flutter/material.dart';
import 'package:flutter_notebook/parallax_image_01/data.dart';
import 'package:flutter_notebook/parallax_image_01/detail_page.dart';
import 'package:flutter_notebook/parallax_image_01/page_transformer.dart';

class PageItems extends StatelessWidget {
  final IntroItem item;
  final PageVisibility pageVisibility;

  PageItems({this.item, this.pageVisibility});

  Widget _applyTextEffects(
      {@required double translationFactor, @required Widget child}) {
    final double xTranslation = pageVisibility.pagePosition * translationFactor;

    return Opacity(
      opacity: pageVisibility.visibleFraction,
      child: Transform(
        transform: Matrix4.translationValues(xTranslation, 0.0, 0.0),
        child: child,
      ),
    );
  }

  _buildTextContainer(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var categoryText = _applyTextEffects(
      translationFactor: 300.0,
      child: Text(
        item.category,
        style: textTheme.caption.copyWith(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontSize: 14.0),
        textAlign: TextAlign.center,
      ),
    );

    var titleText = _applyTextEffects(
      translationFactor: 200.0,
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Text(
          item.title,
          style: textTheme.title
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Positioned(
      bottom: 56.0,
      left: 32.0,
      right: 32.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          categoryText,
          titleText,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var image = Image.network(
      item.imageUrl,
      fit: BoxFit.cover,
      alignment: FractionalOffset(
        0.5 + (pageVisibility.pagePosition / 3),
        0.5,
      ),
    );

    var imageOverlayGradient = DecoratedBox(
        decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff000000), Color(0x00000000)],
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter),
    ));
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
          DetailPage(imageTag : item.category, imageUrl: item.imageUrl,)));
        },
        child: Hero(
          tag: item.category,
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                image,
                imageOverlayGradient,
                _buildTextContainer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}















