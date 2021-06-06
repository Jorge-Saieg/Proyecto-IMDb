import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:addicts_movies/widgets/detalles_w.dart';
import 'package:addicts_movies/widgets/myList_button.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key key, this.pelicula});

  final Pelicula pelicula;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            child: Row(
              children: [
                Container(
                  child: pelicula.posterPath != ''
                      ? Image.network(
                          'https://www.themoviedb.org/t/p/w200' +
                              pelicula.posterPath,
                          height: 120,
                        )
                      : Image.asset(
                          'assets/images/no_disponible.jpg',
                          height: 90,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        pelicula.originalTitle,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        pelicula.releaseDate.year.toString(),
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.amber,
                          ),
                          Text(
                            pelicula.voteAverage.toString(),
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                MyListBtn(
                  pelicula: pelicula,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[350],
          ),
        ],
      ),
    );
  }
}
