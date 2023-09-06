import 'dart:math';

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
      body: Column(
        children: [
          // Widget pertama
          Container(
            width: 1000, height: 200,

            child: Container(
              child: Image.asset(widget.movie.posterls,),


            ),
          ),

          // Widget kedua
          Center(

            child: Container(
              color: Colors.white,

              margin: EdgeInsets.only(left: 40,right: 40),

                  child: Card(
                    elevation: 2,

                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [

                          Text(
                            "Rating: ${widget.movie.rate}",
                            style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                          Text(
                            "Tahun Rilis: ${widget.movie.tahunrilis}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sinopsis ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.movie.desc ,softWrap: true,style: TextStyle(fontWeight: FontWeight.normal),
                          )




                          // Add more details about the movie here
                        ],
                    ),
                    ),
                  )



            ),
          ),
        ],

      ),

    );
  }
}
