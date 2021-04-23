import 'package:dio/dio.dart';
import 'package:addicts_movies/models/clase_Populares.dart';
import 'package:flutter/cupertino.dart';

class PopularesProvider extends ChangeNotifier {
  List<ModeloPopulares> _peliculas = [];

  List<ModeloPopulares> get peliculas => _peliculas;
  void setPeliculas(List<ModeloPopulares> peliculas) {
    _peliculas = peliculas;
    notifyListeners();
  }

  PopularesProvider() {
    obtenerPopulares();
  }

  Future<List<ModeloPopulares>> obtenerPopulares() async {
    try {
      var response = await Dio().get(
          'https://api.themoviedb.org/3/movie/popular?api_key=0e685fd77fb3d76874a3ac26e0db8a4b&language=en-US&page=1');

      final json = response.data['results'];
      var listadoPeliculas = json
          .map((peliculaJson) => ModeloPopulares.fromJson(peliculaJson))
          .toList();

      var listPeliculas = List<ModeloPopulares>.from(listadoPeliculas);
      setPeliculas(listPeliculas);
      return listPeliculas;
    } catch (e) {
      return [];
    }
  }
}
