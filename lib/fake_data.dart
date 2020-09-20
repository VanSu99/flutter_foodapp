import 'package:flutter/material.dart';
import './models/food.dart';
import './models/categories.dart';

const FAKE_CATEGORY = const [
  Category(id: 1, content: 'Pizza Domino', color: Colors.deepOrange),
  Category(id: 2, content: 'Gà KFC', color: Colors.yellow),
  Category(id: 3, content: 'Sườn xào chua ngọt', color: Colors.purpleAccent),
  Category(id: 4, content: '7 Up', color: Colors.green),
  Category(id: 5, content: 'Coca Cola', color: Colors.blue),
  Category(id: 6, content: 'Rau củ', color: Colors.teal),
  Category(id: 7, content: 'Cá hộp 3 cô', color: Colors.pink),
  Category(id: 8, content: 'Sữa chua', color: Colors.deepPurpleAccent),
];

// ignore: non_constant_identifier_names
var FAKE_FOOD = [
  Food(
    name: 'Pizza hải sản', 
    urlName: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Pizza_pie.jpg/1024px-Pizza_pie.jpg", 
    duration: Duration(minutes: 25),
    complexity: Complexity.Medium,
    ingredients: ['Mực', 'Tôm', 'Phô mai'],
    categoryId: 1
  ),
  Food(
    name: 'GÀ XỐT XANH', 
    urlName: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Pizza_%2823%29.jpg/800px-Pizza_%2823%29.jpg", 
    duration: Duration(minutes: 15),
    complexity: Complexity.Medium,
    ingredients: ['Gà', 'Bột mì', 'Chanh'],
    categoryId: 2
  ),
  Food(
    name: 'Sườn ABC', 
    urlName: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/KFC_Rice_Set_%28Malaysia%29_and_Chicken_Nuggets.jpg/800px-KFC_Rice_Set_%28Malaysia%29_and_Chicken_Nuggets.jpg", 
    duration: Duration(minutes: 25),
    complexity: Complexity.Hard,
    ingredients: ['Sườn non', 'Cà chua', 'Nước'],
    categoryId: 3
  ),
  Food(
    name: 'GÀ XỐT XANH', 
    urlName: "https://indaily.com.au/wp-content/uploads/2020/04/Beston-Mozzarella-Pizza.jpg", 
    duration: Duration(minutes: 45),
    complexity: Complexity.Simple,
    ingredients: ['Gà', 'Bột mì', 'Chanh'],
    categoryId: 2
  ),
  Food(
    name: 'GÀ XỐT XANH', 
    urlName: "https://i.ytimg.com/vi/gOvR-jzs22Q/maxresdefault.jpg", 
    duration: Duration(minutes: 30),
    complexity: Complexity.Hard,
    ingredients: ['Gà', 'Bột mì', 'Chanh'],
    categoryId: 1
  ),
  Food(
    name: 'GÀ XỐT XANH', 
    urlName: "https://images.foody.vn/res/g1/4093/prof/s640x400/foody-upload-api-foody-mobile-jhjhjh-190612135510.jpg", 
    duration: Duration(minutes: 20),
    complexity: Complexity.Simple,
    ingredients: ['Gà', 'Bột mì', 'Chanh'],
    categoryId: 3
  ),
];