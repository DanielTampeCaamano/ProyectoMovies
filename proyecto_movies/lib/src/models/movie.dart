import 'dart:ffi';

class Movie {
  String poster_path="";
  bool adult=false;
  String overview="";
  String release_date="";
  var genre_ids =[];
  int id=-1;
  String original_title="";
  String original_language="";
  String title="";
  String backdrop_path="";
  var popularity =-1;
  int vote_count=-1;
  bool video=false;
  var vote_average=-1;


  Movie(String poster_path,
      bool adult,
      String overview,
      String release_date,
      var genre_ids,
      int id,
      String original_title,
      String original_language,
      String title,
      String backdrop_path,
      var popularity,
      int vote_count,
      bool video,
      var vote_average) {
    this.poster_path=poster_path;
    this.adult=adult;
    this.overview=overview;
    this.release_date=release_date;
    this.genre_ids=genre_ids;
    this.id=id;
    this.original_title=original_title;
    this.original_language=original_language;
    this.title=title;
    this.backdrop_path=backdrop_path;
    this.popularity=popularity;
    this.vote_count=vote_count;
    this.video=video;
    this.vote_average=vote_count;
  }

}
