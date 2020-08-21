import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:food_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Combo Meal",
            isActive: true,
            onPress: () {},
          ),
          CategoryItem(
            title: "Chicken",
            onPress: () {},
          ),
          CategoryItem(
            title: "Beverages",
            onPress: () {},
          ),
          CategoryItem(
            title: "Snacks & Sides",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
