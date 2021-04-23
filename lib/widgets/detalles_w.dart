import 'package:flutter/material.dart';

class DetallesWidget extends StatelessWidget {
  const DetallesWidget({
    Key key,
    this.titleW,
    this.imageW,
    this.descriptionW = '',
  }) : super(key: key);

  final String titleW;
  final String imageW;
  final String descriptionW;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //       'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pcDc2WJAYGJTTvRSEIpRZwM3Ola.jpg',
        //     ),
        //     alignment: Alignment.topCenter,
        //   ),
        // ),

        //EFECTO DEL APPBAR
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titleW,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              descriptionW,
              style: TextStyle(
                fontSize: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
