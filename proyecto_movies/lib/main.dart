import 'package:flutter/material.dart';

import 'package:proyecto_movies/src/pages/movies.dart';

void main() {
  runApp(MoviesPage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Mi App')),
        ));
  }
}
