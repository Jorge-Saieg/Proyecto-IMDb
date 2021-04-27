import 'package:addicts_movies/mantenimiento.dart';
import 'package:addicts_movies/pages/buscador.dart';
import 'package:addicts_movies/pages/favoritos.dart';
import 'package:addicts_movies/pages/peliculas.dart';
import 'package:addicts_movies/widgets/pantalla_principal_w.dart';
import 'package:addicts_movies/widgets/search_widget.dart';
import 'package:flutter/material.dart';

//COSAS QUE ARREGLAR:
// 1. QUE HULU SEA MAS PEQUENIO Y NETFLIX MAS GRANDE...
// 2. Quiero poner mas de un item en el taskbar
// 3. No funcioanan los botones de abajo

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

//page builder
class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int indexPantallas = 0;
  List<Widget> pantallas = [
    // PantallaPrincipal_W(),
    PeliculaList(),
    Buscador(),
    Favotiros(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallas[indexPantallas],
      //No puedo hacer que salga el nombre en todos al principio
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPantallas,
        backgroundColor: Color(0xff445a6f),
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: 'Movies',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
            backgroundColor: Colors.black,
          ),
        ],
        onTap: (index) {
          // if (index == 2) {
          //   return showSearch(
          //     context: context,
          //     delegate: PantallaSearch(),
          //   );
          // }
          setState(
            () {
              indexPantallas = index;
              print(indexPantallas);
            },
          );
        },
      ),
    );
  }
}
