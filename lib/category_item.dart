import 'package:flutter/material.dart';
import 'package:flutter_foodapp/food_screen.dart';
import 'package:flutter_foodapp/models/categories.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
        onTap: () {
          // // navigate to another page
          // Navigator.of(context).push(
          //   // build route from widget
          //   MaterialPageRoute(
          //     // send parameters using constructor
          //     builder: (context) => FoodScreen(category: this.category)
          //   )
          // );

          // cách 2
          Navigator.pushNamed(context, FoodScreen.routeName, arguments: {'category': category});
        },
        // hiệu ứng hover
        splashColor: Colors.deepPurple,
        child: Container(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.category.content,
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: _color, borderRadius: BorderRadius.circular(3.0)),
          ),
        ));
  }
}
