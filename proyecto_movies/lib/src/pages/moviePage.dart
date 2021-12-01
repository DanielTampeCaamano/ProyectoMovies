import 'package:flutter/material.dart';

import 'package:proyecto_movies/src/models/movie.dart';

class MoviePage extends StatelessWidget {
  Movie movie = new Movie("", "", 0);

  MoviePage(Movie movie) {
    this.movie = movie;
  }

  Widget _backButton() {
    return IconButton(
      onPressed: () {
        print('going back');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  Widget _appBar() {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "Pelicula",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
                ),
                Text(
                  this.movie.title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2F2F3E)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  _backButton(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _appBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
