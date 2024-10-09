import 'package:flutter/material.dart';
import 'package:navigasi_flutter_xir3/controllers/movie_controller.dart';
import 'package:navigasi_flutter_xir3/models/movie.dart';
import 'package:navigasi_flutter_xir3/widgets/bottom_nav.dart';
import 'package:navigasi_flutter_xir3/widgets/modal.dart';

class MovieView extends StatefulWidget {
  MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  MovieController movie = MovieController();

  ModalWidget modal = ModalWidget();

  List<String> listAct = ["Ubah", "Hapus"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                modal.showFullModal(context, fromTambah(context));
              },
              icon: Icon(Icons.add_sharp))
        ],
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(12),
          itemCount: movie.movie.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              leading: Image(
                image: AssetImage(movie.movie[index].posterPath),
              ),
              title: Text(movie.movie[index].title),
              trailing: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 30.0,
                ),
                // onSelected: choiceAction,
                itemBuilder: (BuildContext context) {
                  return listAct.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                      onTap: () {
                        modal.showFullModal(context, Text("hello"));
                      },
                    );
                  }).toList();
                },
              ),
            ));
          }),
      bottomNavigationBar: BottomNav(2),
    );
  }
}

Widget fromTambah(context) {
  return Column(
    children: [
      Text("Tambah Data"),
      TextField(
        decoration: InputDecoration(label: Text("Title")),
      ),
      TextField(
        decoration: InputDecoration(label: Text("Gambar")),
      ),
      ElevatedButton(onPressed: () {}, child: Text("Simpan"))
    ],
  );
}
