import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/detail_body.dart';
import 'package:food_app/screens/details/components/detail_app_bar.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailAppBar(context),
      body: Body(),
    );
  }
}

