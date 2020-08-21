import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:food_app/constants.dart';

class ImageCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function onPress;
  const ImageCard({
    Key key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 15,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.18,
                  ),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
