import 'dart:math';
import 'package:flutter/cupertino.dart';
import './categories.dart';

class Food {
  int id;
  String name;
  String urlName;
  Duration duration; // time to finish this food
  Complexity complexity;
  List<String> ingredients = List<String>();
  int categoryId;

  Food({
    @required this.name,
    @required this.urlName,
    @required this.duration,
    this.complexity,
    this.ingredients,
    this.categoryId
  }) {
    this.id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium, 
  Hard
}