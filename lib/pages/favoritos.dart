import 'package:flutter/material.dart';

class Favotiros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'favoritos',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
        backgroundColor: Color(0xff445a6f),
      ),
      backgroundColor: Color(0xff2b4056),
    );
  }
}
