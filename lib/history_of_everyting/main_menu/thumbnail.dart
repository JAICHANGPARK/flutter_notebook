import 'package:flutter/material.dart';
import 'package:flutter_notebook/history_of_everyting/article/timeline_entry_widget.dart';
import 'package:flutter_notebook/history_of_everyting/timeline/timeline_entry.dart';

class ThumbnailWidget extends StatelessWidget {
  static const double radius = 17;
  final TimelineEntry entry;

  ThumbnailWidget(this.entry, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TimelineAsset asset = entry.asset;
    Widget thumbnail;
    if(asset is TimelineImage){
      thumbnail = RawImage(image: asset.image);
    }else if (asset is TimelineNima || asset is TimelineFlare){
      thumbnail = TimelineEntryWidget(
        isActive : false,
        timelineEntry: entry
      );
    }else{
      thumbnail = Container(
        color: Colors.transparent,
      );
    }
    return Container(
      width: radius * 2,
      height: radius * 2,
      child: ClipPath(clipper: CircleClipper(), child: thumbnail,),
    );
  }
}

class CircleClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path..addOval(Rect.fromCircle(
      center: Offset(size.width / 2 , size.height / 2),
      radius: size.width / 2
    ));
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)  => true;

}



















