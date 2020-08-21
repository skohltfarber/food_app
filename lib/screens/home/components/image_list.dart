import 'package:flutter/material.dart';

import 'package:food_app/screens/details/detail.dart';

import 'package:food_app/screens/home/components/image_card.dart';

class ImageList extends StatelessWidget {
  const ImageList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ImageCard(
            title: "Burger & Beer",
            shopName: "MacDonald's",
            svgSrc: "assets/icons/burger_beer.svg",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                ),
              );
            },
          ),
          ImageCard(
            title: "Chinese & Noodles",
            shopName: "Panda Express",
            svgSrc: "assets/icons/chinese_noodles.svg",
            onPress: () {},
          ),
          ImageCard(
            title: "Burger & Beer",
            shopName: "MacDonald's",
            svgSrc: "assets/icons/burger_beer.svg",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
