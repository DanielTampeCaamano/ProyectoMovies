import 'package:flutter/material.dart';

class MoviesPage extends StatefulWidget {
  MoviesPage() {
  }

  @override
  State<StatefulWidget> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  var _dataLength = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Text('Nuevas'),
                Text('Mejor Puntuadas'),
                Text('Populares')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _contentGridView(0),
              _contentGridView(0),
              _contentGridView(0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentGridView(int data_type) {
    switch (data_type) {
      case 0:
        //nuevas
        break;
      case 1:
        //mejor puntuadas
        break;
      case 2:
        //populares
        break;
      default:
        //error
        break;
    }

    ScrollController _controller = ScrollController();

    _scrollListener() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {
          _dataLength = _dataLength + 20;
          print('Se llego al fondo');
        });
      }
    }

    _controller.addListener(_scrollListener);

    GridView _grid = GridView.builder(
      controller: _controller,
      itemCount: _dataLength,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Card(
        child: GridTile(
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (++_dataLength % 20 == 0) {
                  setState(() {});
                  print(_dataLength);
                }
              },
              child: Text((index + 1).toString()),
            ),
          ),
        ),
      ),
    );
    return _grid;
  }
}
