import 'package:addicts_movies/widgets/myList_button.dart';
import 'package:flutter/material.dart';

import 'models/clase_Pelicula.dart';

//llego desde la pantalla principal apretando alguna plataforma
class Mantenimiento extends StatelessWidget {
  const Mantenimiento({
    this.pelicula,
    Key key,
  }) : super(key: key);

  final Pelicula pelicula;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mantenimiento'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no_disponible.jpg',
              height: 90,
            ),
            Text(
              'En mantenimiento',
              style: TextStyle(fontSize: 20),
            ),
            //MyListBtn(id: pelicula.id.toString()),
          ],
        ),
      ),
    );
  }

  Widget appbar() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //NO LOGRE PONER LA FOTO MAS GRANDE
          floating: true,
          title: Center(
            child: Image.asset(
              'assets/images/Logo.png',
              height: 70,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
