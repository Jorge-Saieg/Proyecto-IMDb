import 'package:addicts_movies/service/masVistas_servicio.dart';
import 'package:flutter/material.dart';
import 'package:addicts_movies/service/populares_servicio.dart';
import 'package:addicts_movies/widgets/pelicula_w.dart';
import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:provider/provider.dart';

class PeliculaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Populares',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
        backgroundColor: Color(0xff445a6f),
      ),
      backgroundColor: Color(0xff304860),
      body: ListView(
        children: [
          //provider de mas populares
          Container(
            height: 400,
            child: Consumer<PopularesProvider>(
              builder: (context, value, child) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.peliculas.length,
                itemBuilder: (context, index) => PeliculaWidget(
                  pelicula: value.peliculas[index],
                ),
              ),
            ),
          ),
          //provider de mas vistas
          Container(
            height: 400,
            child: Consumer<MasVistasProvider>(
              builder: (context, value, child) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.peliculas.length,
                itemBuilder: (context, index) => PeliculaWidget(
                  pelicula: value.peliculas[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
