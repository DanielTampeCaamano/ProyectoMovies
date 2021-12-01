import 'package:flutter/material.dart';
import 'package:proyecto_movies/src/pages/moviePage.dart';
import 'package:proyecto_movies/src/routes/routes.dart';

class BestRatedPage extends StatefulWidget {
  static String tag='/';
  @override
  State<StatefulWidget> createState() => _BestRatedPageState();
}

class _BestRatedPageState extends State<BestRatedPage> {
  var _dataLength = 20;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        //routes: getRoutes(),
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
              _contentGridView(),
              _contentGridView(),
              _contentGridView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _contentGridView() {
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
              child: Text((index + 1).toString()),
              //onPressed: () =>Navigator.pushNamed(context, MoviePage.tag),
              onPressed: () {
                if (++_dataLength % 20 == 0) {
                  setState(() {});
                  print(_dataLength);
                }
              }

            ),
          ),
        ),
      ),
    );
    return _grid;
  }
}
