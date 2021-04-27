import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:flutter/material.dart';

class DetalleWidget extends StatelessWidget {
  const DetalleWidget({
    this.pelicula,
    Key key,
  }) : super(key: key);

  final Pelicula pelicula;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chao'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hola',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2' +
                  pelicula.image,
              height: 300,
            ),
          ),
          Text(
            pelicula.description,
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
