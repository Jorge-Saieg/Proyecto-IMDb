import 'package:dio/dio.dart';
import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:flutter/cupertino.dart';

//provider
class PopularesProvider extends ChangeNotifier {
  //provider
  List<Pelicula> _peliculas = [];

  //provider
  List<Pelicula> get peliculas => _peliculas;
  //provider
  void setPeliculas(List<Pelicula> peliculas) {
    _peliculas = peliculas;
    notifyListeners();
  }

  //provider
  PopularesProvider() {
    obtenerPopulares();
  }

  Future<List<Pelicula>> obtenerPopulares() async {
    try {
      var response = await Dio().get(
          'https://api.themoviedb.org/3/movie/popular?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&page=1');

      final json = response.data['results'];
      var listadoPeliculas =
          json.map((peliculaJson) => Pelicula.fromJson(peliculaJson)).toList();

      //provider
      var listPeliculas = List<Pelicula>.from(listadoPeliculas);
      setPeliculas(listPeliculas);
      return listPeliculas;
    } catch (e) {
      return [];
    }
  }
}
