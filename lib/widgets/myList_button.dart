import 'package:addicts_movies/service/myList_servicio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyListBtn extends StatelessWidget {
  const MyListBtn({Key key, this.id}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyListProvider>(context);
    return IconButton(
      icon: provider.myListIcon(id),
      color: Color(0xff8e9ca8),
      iconSize: 40.0,
      onPressed: () {
        provider.setFavorite(id);
      },
    );
  }
}
