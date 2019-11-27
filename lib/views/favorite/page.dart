import 'package:flutter/material.dart';
import 'package:poem/actions/Adapt.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FavoriteState();
  }
}

class FavoriteState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Text("favorite");
  }
}
