import 'package:flutter/material.dart';

import 'package:food_app/components/search_box.dart';
import 'package:food_app/screens/home/components/category_list.dart';
import 'package:food_app/screens/home/components/image_list.dart';
import 'package:food_app/screens/home/components/discount_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ImageList(),
        DiscountCard(),
      ],
    );
  }
}

