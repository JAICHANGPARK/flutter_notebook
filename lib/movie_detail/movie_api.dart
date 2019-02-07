import 'package:flutter_notebook/movie_detail/model/movie.dart';

final Movie testMovie = Movie(
    bannerUrl:
        "https://image.tmdb.org/t/p/w533_and_h300_bestv2/5A2bMlLfJrAfX9bqAibOL2gCruF.jpg",
    posterUrl:
        "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5Kg76ldv7VxeX9YlcQXiowHgdX6.jpg",
    title: "Aquaman(2018)",
    rating: 9.0,
    starRating: 4,
    categories: ['Action', 'Fantasy', 'SF'],
    storyline: 'Once home to the most advanced civilization on Earth, '
        'the city of Atlantis is now an underwater kingdom ruled by the power-hungry King Orm.'
        'With a vast army at his disposal, Orm plans to conquer the remaining oceanic people',
    photoUrls: [
      "https://image.tmdb.org/t/p/w533_and_h300_bestv2/4rbszAcobxhioUNHcrbzCaLMFQc.jpg",
      "https://image.tmdb.org/t/p/w500_and_h282_face/yCiIZ2dLUODlhdKYRaesRDjCyfu.jpg",
      "https://image.tmdb.org/t/p/w500_and_h282_face/98u3ZQYj2djuLOGcoPLD4UmnxhG.jpg",
      "https://image.tmdb.org/t/p/w500_and_h282_face/yp7unMkgQ41waw7jQrYrUSZJRPS.jpg",
    ],
    actors: [
      Actor(
          name: "Jason Momoa",
          avatarUrl:
              "https://image.tmdb.org/t/p/w600_and_h900_bestv2/PSK6GmsVwdhqz9cd1lwzC6a7EA.jpg"),
      Actor(
          name: "Amber Heard",
          avatarUrl:
              "https://image.tmdb.org/t/p/w600_and_h900_bestv2/ft4ACLVFBXaOotbicBLm1fODyZr.jpg"),
      Actor(
          name: "Willem Dafoe ",
          avatarUrl:
              "https://image.tmdb.org/t/p/w600_and_h900_bestv2/dsrEiPDCcr31BPiGjrlSKb0DMsh.jpg")
    ]);
