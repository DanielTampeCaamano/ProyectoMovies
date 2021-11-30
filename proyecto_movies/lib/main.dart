import 'package:flutter/material.dart';

void main() {}

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
        
      )
    );
  }
}
