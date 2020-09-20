import 'package:flutter/material.dart';
import 'package:flutter_foodapp/detail_food_screen.dart';
import 'package:flutter_foodapp/fake_data.dart';
import 'package:flutter_foodapp/models/categories.dart';
import 'models/food.dart';

class FoodScreen extends StatelessWidget {
  static final String routeName = '/FoodScreen';
  Category category;
  FoodScreen({this.category});
  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    // filter foods
    List<Food> foods =
        FAKE_FOOD.where((food) => food.categoryId == this.category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('${category.content}'),
      ),
      body: Center(
          child: foods.length > 0
              ? ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    Food food = foods[index];
                    return InkWell(
                      onTap: () {
                        // push : chuyển sang screen tiếp theo
                        // pop : quay trở lại screen cũ
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                DetailFoodScreen(food: food)));
                      },
                      child: Stack(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(20.0),
                              child: ClipRRect(
                                // hiển thị image
                                borderRadius: BorderRadius.circular(10.0),
                                clipBehavior: Clip.hardEdge,
                                child: Center(
                                  child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/images/loading.gif',
                                      image: food.urlName),
                                ),
                              )),
                          // đặt vị trí tuyệt đối
                          Positioned(
                            top: 30.0,
                            left: 30.0,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white, width: 2.0)),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 25.0,
                                  ),
                                  Text(
                                    '${food.duration.inMinutes} minutes',
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30,
                            right: 30,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '${food.complexity.toString().split('.').last}',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 30,
                              right: 30,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '${food.name}',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    );
                  },
                )
              : Text('Not Food Found', style: TextStyle(
                fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.red[400]
              ))
              ),
    );
  }
}
