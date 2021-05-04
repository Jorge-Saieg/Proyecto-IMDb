import 'package:flutter/material.dart';

import '../mantenimiento.dart';

class Buscador extends StatefulWidget {
  Buscador({Key key}) : super(key: key);

  @override
  _BuscadorState createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  final movie = TextEditingController();

  @override
  void initState() {
    super.initState();
    movie.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.grey[400],
          // cursorHeight: 25,
          controller: movie,
          style: TextStyle(
            color: Colors.grey[400],
          ),
          decoration: InputDecoration(
            hintText: 'Seatch MDb',
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            suffixIcon: movie.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey[400],
                    ),
                    onPressed: () => movie.clear(),
                  ),
          ),
        ),
        backgroundColor: Color(0xff445a6f),
      ),
      backgroundColor: Color(0xff2b4056),
      body: SafeArea(
        child: ListView(
          //NO FUNCIONAN  LOS AXIS...??
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),

            //METODOS PARA CREAR LAS IMAGENES
            plataformas('assets/images/Netflix1.jpg'),
            SizedBox(height: 20),
            plataformas('assets/images/DisneyPlus.jpg'),
            SizedBox(height: 20),
            plataformas('assets/images/PrimeVideo.png'),
            SizedBox(height: 20),
            plataformas('assets/images/HBO.png'),
            SizedBox(height: 20),
            plataformas('assets/images/hulu.jpg'),
          ],
        ),
      ),
    );
  }

  plataformas(String imagen) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Mantenimiento(),
              ),
            );
          },
          child: Image.asset(
            imagen,
          ),
        ),
      ),
    );
  }
}
