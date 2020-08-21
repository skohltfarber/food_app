import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    this.title,
    this.isActive = false,
    this.onPress,
  }) : super(key: key);
  final String title;
  final bool isActive;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 12,
                    ),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
