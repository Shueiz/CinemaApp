import 'package:find_movie/movie_list.dart';
import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  MovieDetailPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              movie.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              'Classificação: ${movie.rating}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'Horários: ${movie.time}',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              movie.description,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
