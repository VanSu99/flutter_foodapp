import 'package:flutter/material.dart';
import 'package:flutter_foodapp/category_screen.dart';
import 'package:flutter_foodapp/food_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // các routes dẫn đến từng screen
        '/FoodScreen': (context) => FoodScreen(),
        '/CategoryScreen': (context) => CategoryScreen()
      },
      theme: ThemeData(     
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App', style: TextStyle(
            fontSize: 23.0
          ), textAlign: TextAlign.center,),
        ),
        body: CategoryScreen(),
      ),
    );
  }
}

