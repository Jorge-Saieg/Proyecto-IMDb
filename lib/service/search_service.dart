import 'package:addicts_movies/models/search_movies.dart';
import 'package:dio/dio.dart';

class SearchService {
  Future<List<SearchMovie>> getPelicula(String title) async {
    try {
      var response = await Dio().get(
          'https://api.themoviedb.org/3/search/movie?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&query=$title');

      final json = response.data['results'];
      var listadoPeliculas = json
          .map((peliculaJson) => SearchMovie.fromJson(peliculaJson))
          .toList();

      return List<SearchMovie>.from(listadoPeliculas);
    } catch (e) {
      return [];
    }
  }
}
