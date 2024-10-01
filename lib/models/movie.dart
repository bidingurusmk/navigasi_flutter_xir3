class Movie {
  int id;
  String title;
  double? voteAverage;
  String posterPath;
  Movie({
    required this.id,
    required this.title,
    this.voteAverage,
    required this.posterPath,
  });
}
