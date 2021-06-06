import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListProvider extends ChangeNotifier {
  List<String> _myList = [];

  List<Pelicula> listaPelis = [];

  List<String> get myList => _myList;

  MyListProvider();

  void setId(Pelicula pelicula) {
    if (_myList.contains(pelicula.id)) {
      _myList.removeWhere((element) => element == pelicula.id);
      listaPelis.removeWhere((element) => element == pelicula);
    } else {
      _myList.add(pelicula.id);
      listaPelis.add(pelicula);
    }
    notifyListeners();
  }

  void setMyList() {}

  Icon myListIcon(String id) {
    IconData icon;
    if (_myList.contains(id)) {
      icon = Icons.bookmark;
    } else {
      icon = Icons.bookmark_border;
    }
    return Icon(icon);
  }

  // crear() {
  //   _myList.map(
  //     (e) {
  //       listaPelis.contains(e)
  //           ? listaPelis.add(obtenerPorId(e))
  //           : listaPelis = listaPelis;
  //     },
  //   );
  // }

  // obtenerPorId(id) {
  //   // dio
  //   // return Pelicula
  // }
}
