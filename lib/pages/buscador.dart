import 'package:flutter/material.dart';

import '../mantenimiento.dart';

class Buscador extends StatefulWidget {
  Buscador({Key key}) : super(key: key);

  @override
  _BuscadorState createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    final movie = TextEditingController();

    initState() {
      super.initState();
      movie.addListener(() => setState(() {}));
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: movie,
          style: TextStyle(
            color: Color(0xff304860),
          ),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Seatch MDb',
            hintStyle: TextStyle(
              color: Color(0xff304860),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff304860),
            ),
            suffixIcon: movie.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Color(0xff304860),
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
