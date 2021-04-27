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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Busqueda')),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xff304860),
    );
  }
}
