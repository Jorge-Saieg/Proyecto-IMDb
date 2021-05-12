import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:addicts_movies/widgets/detalles_w.dart';
import 'package:flutter/material.dart';

//darle sombra y el ciculo de cargando
// poner los titulos del lado izquierdo

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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetalleWidget(
                    pelicula: pelicula,
                  ),
                ),
              );
            },
            child: Container(
              width: 150,
              child: Column(
                children: [
                  Image.network(
                    'https://www.themoviedb.org/t/p/w200' + pelicula.image,
                    // height: 200,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                    child: Container(
                      width: 202,
                      color: Color(0xff445a6f),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              pelicula.original_title,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                Text(
                                  pelicula.vote_average.toString(),
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
