import 'package:flutter/material.dart';
import 'package:foodappcourse/src/modules/category.dart';

import '../commons.dart';
import 'CustomText.dart';

List<Category> categoriesList = [
  Category(name: "Lugar 1", image: "restaurante1.jpg"),
  Category(name: "Lugar 2", image: "restaurante2.jpg"),
  Category(name: "Lugar 3", image: "restaurante3.jpg"),
  Category(name: "Lugar 4", image: "restaurante4.jpg"),
  Category(name: "Lugar 5", image: "restaurante5.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[50], offset: Offset(4, 6), blurRadius: 20)
                  ]),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 16,
                  color: black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
