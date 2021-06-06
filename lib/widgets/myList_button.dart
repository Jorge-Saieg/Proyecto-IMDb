import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:addicts_movies/service/myList_servicio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyListBtn extends StatefulWidget {
  const MyListBtn({Key key, this.pelicula}) : super(key: key);
  final Pelicula pelicula;

  @override
  _MyListBtnState createState() => _MyListBtnState();
}

class _MyListBtnState extends State<MyListBtn> {
  String valorGuardado = 'nada';

  @override
  Widget build(BuildContext context) {
    setState(() {
      getPreference();
    });

    final provider = Provider.of<MyListProvider>(context);
    return IconButton(
      icon: provider.myListIcon(widget.pelicula.id),
      color: Color(0xff8e9ca8),
      iconSize: 40.0,
      onPressed: () {
        provider.setId(widget.pelicula);
        setPreference();
      },
    );
  }

  Future<void> getPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      valorGuardado = preferences.get('MyList');
    });
  }

  Future<void> setPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('MyList', valorGuardado);
  }
}
