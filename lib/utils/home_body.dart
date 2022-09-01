import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphones_shop_app/constants.dart';
import 'package:headphones_shop_app/models/categories.dart';

import 'package:headphones_shop_app/size_config.dart';
import 'package:headphones_shop_app/utils/category_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2), //20
            child: TitleText(
              title: "Browse by Categories",
            ),
          ),
          CategoryCard(
            category: category,
          )
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6, //16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CategoryShapeCustom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double borderRadius = 30;

    path.lineTo(0, height - borderRadius);
    path.quadraticBezierTo(0, height, borderRadius, height);
    path.lineTo(width - borderRadius, height);
    path.quadraticBezierTo(width, height, width, height - borderRadius);
    path.lineTo(width, borderRadius);
    path.quadraticBezierTo(width, 0, width - borderRadius, 0);
    path.lineTo(borderRadius, borderRadius * 0.75);
    path.quadraticBezierTo(0, borderRadius, 0, borderRadius * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
