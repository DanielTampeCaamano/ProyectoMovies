import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_movies/src/models/movie.dart';

class ApiService {
  // Apikey necesaria para realizar las consultas a TheMovieDB
  String apiKey = "api_key=74ad4b182a06f0db76fbb0aa337f18e9&language=es";

  // URL base de la API
  String baseURL = 'https://api.themoviedb.org/3/movie/';


  ApiService();

  Future getPopular(var page) async {
    return await http
        .get(Uri.parse(baseURL + 'popular?' + apiKey + '&page=' + page));
  }

  Future getTopRated(var page) async {
    return await http
        .get(Uri.parse(baseURL + 'top_rated?' + apiKey + '&page=' + page));
  }

  Future getMovie(var movieId) async {
    return await http.get(Uri.parse(movieId+'?'+apiKey));
  }
}
