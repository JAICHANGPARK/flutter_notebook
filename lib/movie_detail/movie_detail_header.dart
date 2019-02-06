import 'package:flutter/material.dart';
import 'package:flutter_notebook/movie_detail/arc_banner_image.dart';
import 'package:flutter_notebook/movie_detail/model/movie.dart';
import 'package:flutter_notebook/movie_detail/poster.dart';
import 'package:flutter_notebook/movie_detail/rating_information.dart';

class MovieDetailHeader extends StatelessWidget {
  final Movie movie;

  MovieDetailHeader(this.movie);

  List<Widget> _buildCategoryChips(TextTheme textTheme) {
    return movie.categories.map((category) {
      return Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var movieInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          movie.title,
          style: textTheme.title,
        ),
        SizedBox(
          height: 8.0,
        ),
        RatingInformation(movie),
        SizedBox(
          height: 12.0,
        ),
        Row(
          children: _buildCategoryChips(textTheme),
        )
      ],
    );

    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(movie.bannerUrl),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Poster(
                movie.posterUrl,
                height: 180.0,
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: movieInformation,
              ),

            ],
          ),
        ),


      ],
    );
  }
}
