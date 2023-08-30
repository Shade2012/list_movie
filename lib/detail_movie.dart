import 'package:flutter/material.dart';
import 'data_movie.dart';

class DetailMovie extends StatefulWidget {
  final Movie movie;

  const DetailMovie({required this.movie});

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.movie.poster),
            SizedBox(height: 16),
            Text(
              "Rating: ${widget.movie.rate}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Tahun Rilis: ${widget.movie.tahunrilis}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Preview : ${widget.movie.desc}",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            // Add more details about the movie here
          ],
        ),
      ),
    );
  }
}
