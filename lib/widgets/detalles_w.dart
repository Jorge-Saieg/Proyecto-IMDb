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
    // print(pelicula.popularity);
    return Scaffold(
      appBar: AppBar(
        //como ponerlo en el centro sin que se corra por la flecha
        title: Center(
          child: Text(
            'MDb',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
        backgroundColor: Color(0xff445a6f),
      ),
      backgroundColor: Color(0xff223344),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://www.themoviedb.org/t/p/w500' + pelicula.backdrop_path,
            fit: BoxFit.fill,
            // height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              pelicula.original_title,
              style: TextStyle(
                fontSize: 26,
                color: Colors.grey[400],
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              pelicula.description,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[400],
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 20,
                color: Colors.amber,
              ),
              Text(
                pelicula.vote_average.toString(),
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(pelicula.release_date.year.toString(),
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
