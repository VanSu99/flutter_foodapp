import 'package:flutter/material.dart';
import 'package:flutter_foodapp/category_item.dart';
import 'package:flutter_foodapp/fake_data.dart';

class CategoryScreen extends StatelessWidget {
  static final String routeName = '/CategoryScreen';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12.0),
      children: FAKE_CATEGORY.map((item) => CategoryItem(category: item,)).toList(),
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3/2, // width/height
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
    );
  }
}
