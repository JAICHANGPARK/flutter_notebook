








class Movie{

  final String bannerUrl;
  final String posterUrl;
  final String title;
  final double rating;
  final int starRating;

  final List<String> categories;

  final String storyline;
  final List<String> photoUrls;
  final List<Actor> actors;

  Movie({this.bannerUrl, this.posterUrl, this.title, this.rating,
    this.starRating, this.categories, this.storyline, this.photoUrls,
    this.actors});

}


class Actor{

    final String name;
    final String avatarUrl;

    Actor({this.name, this.avatarUrl});

}