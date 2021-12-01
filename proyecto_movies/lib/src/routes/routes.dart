import 'package:flutter/material.dart';
import 'package:proyecto_movies/src/pages/movies.dart';
import 'package:proyecto_movies/src/pages/moviePage.dart';

Map<String, WidgetBuilder> getRoutes() {
  var movie;
  return <String, WidgetBuilder>{
    BestRatedPage.tag: (context) => BestRatedPage(),
    MoviesPage.tag: (context) => MoviesPage(),
  };
}