import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:addicts_movies/widgets/detalles_w.dart';
import 'package:flutter/material.dart';

// como poner

class PeliculaWidget extends StatelessWidget {
  const PeliculaWidget({
    this.pelicula,
    Key key,
  }) : super(key: key);

  final Pelicula pelicula;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          ClipRRect(
            //  borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetalleWidget(
                      pelicula: pelicula,
                    ),
                  ),
                );
              },
              child: Image.network(
                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2' +
                    pelicula.image,
                height: 300,
              ),
            ),
          ),
          Container(
              width: 202,
              height: 70,
              color: Color(0xff445a6f),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      pelicula.title,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      pelicula.title,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
