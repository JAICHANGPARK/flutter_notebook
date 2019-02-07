import 'package:flutter/material.dart';

class PhotoScroller extends StatelessWidget {

  final List<String> photoUrls;
  PhotoScroller(this.photoUrls);

  Widget _buildPhoto(BuildContext context, int index) {
    var photo = photoUrls[index];

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.network(
          photo,
          width: 160.0,
          height: 120.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Photos',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(100.0),
          child: ListView.builder(
              itemCount: photoUrls.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 8.0, left: 20.0),
              itemBuilder: _buildPhoto),
        )
      ],
    );
  }
}






















