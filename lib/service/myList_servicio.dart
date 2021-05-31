import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListProvider extends ChangeNotifier {
  List<String> _myList = [];

  crear() {
    _myList.map(
      (e) {
        listaPelis.contains(e)
            ? listaPelis.add(obtenerPorId(e))
            : listaPelis = listaPelis;
      },
    );
  }

  obtenerPorId(id) {
    // dio
    // return Pelicula
  }

  List<Pelicula> listaPelis = [];

  List<String> get myList => _myList;

//esto por que?
  MyListProvider();

  void setFavorite(String id) {
    //que se esta preguntando aqui?
    if (_myList.contains(id)) {
      _myList.removeWhere((element) => element == id);
    } else {
      _myList.add(id);
    }
    notifyListeners();
  }

  Icon myListIcon(String id) {
    IconData icon;
    if (_myList.contains(id)) {
      icon = Icons.bookmark;
    } else {
      icon = Icons.bookmark_border;
    }
    return Icon(icon);
  }
}
