import 'package:flutter/material.dart';
import 'package:proyecto_movies/src/models/movie.dart';
import 'package:proyecto_movies/src/pages/moviePage.dart';
import 'package:proyecto_movies/src/routes/routes.dart';

class BestRatedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BestRatedPageState();
}

class _BestRatedPageState extends State<BestRatedPage> {
  var _dataLength = 20;
  int _page = 0;

  List<Movie> movieData = [
    new Movie("Hombre araña", "Desc1", 70),
    new Movie("Superman", "Desc2", 30),
    new Movie("Escapist", "Desc3", 100),
    new Movie("GenericMovie", "Desc4", 10),
    new Movie("Hombre araña", "Desc1", 70),
    new Movie("Superman", "Desc2", 30),
    new Movie("Escapist", "Desc3", 100),
    new Movie("GenericMovie", "Desc4", 10),
  ];

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

  _getMoreMovies(int page) {
    print("CurrentPage: " + (page - 1).toString());
    this.movieData.addAll([
      new Movie("Hombre araña", "Desc1", page.toDouble()),
      new Movie("Superman", "Desc2", page.toDouble()),
      new Movie("Escapist", "Desc3", page.toDouble()),
      new Movie("GenericMovie", "Desc4", page.toDouble()),
    ]);
  }

  Widget _contentGridView() {
    ScrollController _controller = ScrollController();

    _scrollListener() {
      if (_controller.offset >= _controller.position.maxScrollExtent &&
          !_controller.position.outOfRange) {
        setState(() {
          _getMoreMovies(this._page++);
          print('Se llego al fondo');
        });
      }
    }

    _controller.addListener(_scrollListener);

    GridView _grid = GridView.builder(
      controller: _controller,
      itemCount: this.movieData.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => Card(
        child: GridTile(
          child: Center(
            child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: Text(this.movieData.elementAt(index).title +
                    ': ' +
                    (index + 1).toString()),
                //onPressed: () =>Navigator.pushNamed(context, MoviePage.tag),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MoviesPage(this.movieData.elementAt(index))));
                }),
          ),
        ),
      ),
    );
    return _grid;
  }
}
