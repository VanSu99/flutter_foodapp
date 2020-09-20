import 'package:flutter/material.dart';
import 'package:flutter_foodapp/models/food.dart';

class DetailFoodScreen extends StatelessWidget {
  Food food;
  DetailFoodScreen({this.food});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${food.name}'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif', image: food.urlName),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'Ingredients',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: this.food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = this.food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '${index+1}',
                          style: TextStyle(fontSize: 19.0, color: Colors.black),
                        ),
                      ),
                      title: Text(ingredient, style: TextStyle(fontSize: 22.0)),
                    );
                  })),
        ],
      ),
    );
  }
}
