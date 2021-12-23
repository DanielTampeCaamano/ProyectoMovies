import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:proyecto_movies/src/models/movie.dart';

class MoviesPage extends StatelessWidget {
  static String tag = '/movie';

  Movie? movie;

  MoviesPage(Movie movie) {
    this.movie = movie;
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  Widget _appBar() {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 687,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(

            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Image.network(this.movie!.image, width: 350),
                Container(
                  color: Colors.lightBlue,
                  child: Column(
                    children: [
                      Text(
                        "Pelicula",
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            color: Color(0xFF2F2F3E)),
                      ),
                      Text(
                        this.movie!.title,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2F2F3E)),
                      ),
                      Text(
                        "Rating",
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.italic,
                            color: Color(0xFF2F2F3E)),
                      ),
                      Text(
                        this.movie!.rating.toString(),
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2F2F3E)),
                      ),
                    ],
                  ),
                )
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
                  _backButton(context),
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
