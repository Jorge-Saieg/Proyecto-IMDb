import 'package:addicts_movies/models/clase_Pelicula.dart';
import 'package:addicts_movies/service/myList_servicio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favotiros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyListProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'My List',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
          backgroundColor: Color(0xff445a6f),
        ),
        backgroundColor: Color(0xff2b4056),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: value.listaPelis.length,
              itemBuilder: (context, index) => Item2(value.listaPelis[index]),
            )
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  Item2(this.pelicula);

  final Pelicula pelicula;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('estoy aqui'),
              Text(pelicula.originalTitle),
              Text(
                pelicula.releaseDate.toString(),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          // ElevatedButton(
          //   onPressed: () => Provider.of<Carrito>(context, listen: false)
          //       .agregarAlCarrito(producto),
          //   child: Text('AGREGAR'),
          // ),
        ],
      );
}
