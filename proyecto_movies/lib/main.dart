import 'package:flutter/material.dart';

import 'package:proyecto_movies/src/pages/movies.dart';

void main() {
  runApp(BestRatedPage());
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
          appBar: AppBar(
              title: Text('Mi App')
          ),
          drawer: DrawerPage(),
          //body: ,
        )
    );
  }
}

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Text('Mi Menu'),
      ),
    );
  }
}