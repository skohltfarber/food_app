import 'package:flutter/material.dart';

class DetailItemImage extends StatelessWidget {
  const DetailItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      height: size.height * 0.30,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}