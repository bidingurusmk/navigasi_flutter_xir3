import 'package:navigasi_flutter_xir3/models/movie.dart';

class MovieController {
  List<Movie> movie = [
    Movie(
      id: 1,
      title: "Superman come back",
      voteAverage: 4,
      posterPath: 'assets/img1.jpg',
    ),
    Movie(
      id: 1,
      title: "Superman come back",
      voteAverage: 4,
      posterPath: 'assets/img2.jpg',
    )
  ];
  addData() {
    Movie data = Movie(id: 3, title: "ok", posterPath: "assets/img3.jpg");
    this.movie.add(data);
  }
}
