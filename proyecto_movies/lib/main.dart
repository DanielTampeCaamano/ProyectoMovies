import 'package:flutter/material.dart';

import 'package:proyecto_movies/src/pages/movies.dart';
import 'package:proyecto_movies/src/pages/moviePage.dart';
import 'package:proyecto_movies/src/models/movie.dart';

void main() {
  runApp(MoviePage(new Movie("Hombre araña", "Description", 70)));
}
