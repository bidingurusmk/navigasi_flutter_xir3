import 'package:flutter/material.dart';
import 'package:navigasi_flutter_xir3/controllers/movie_controller.dart';
import 'package:navigasi_flutter_xir3/widgets/bottom_nav.dart';

class MovieView extends StatelessWidget {
  MovieView({super.key});
  MovieController movie = MovieController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(12),
          itemCount: movie.movie.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: AssetImage(movie.movie[index].posterPath),
                            width: 100,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 58 / 100,
                          child: Text(
                            movie.movie[index].title,
                          ),
                        ),
                      ],
                    ),
                    Text(movie.movie[index].voteAverage.toString()),
                  ],
                ),
              ),
            );
          }),
      bottomNavigationBar: BottomNav(2),
    );
  }
}
