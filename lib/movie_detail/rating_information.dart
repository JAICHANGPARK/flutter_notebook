import 'package:flutter/material.dart';
import 'package:flutter_notebook/movie_detail/model/movie.dart';

class RatingInformation extends StatelessWidget {
  final Movie movie;

  RatingInformation(this.movie);

  Widget _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= movie.starRating ? theme.accentColor : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);

    var numericRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          movie.rating.toString(),
          style: textTheme.title
              .copyWith(fontWeight: FontWeight.w400, color: theme.accentColor),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Ratings',
          style: ratingCaptionStyle,
        )
      ],
    );

    var starRating = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        
        _buildRatingBar(theme),
        Padding(
          padding: EdgeInsets.only(top: 4.0, left: 4.0),
          child: Text('Grade now', style: ratingCaptionStyle,),
        )
      ],
    );


    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        numericRating,
        SizedBox(width: 16.0,),
        starRating
      ],
    );
  }
}





































