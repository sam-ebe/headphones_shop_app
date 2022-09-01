import 'package:flutter/material.dart';
import 'package:headphones_shop_app/constants.dart';
import 'package:headphones_shop_app/models/categories.dart';
import 'package:headphones_shop_app/size_config.dart';
import 'package:headphones_shop_app/utils/home_body.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: SizedBox(
        width: defaultSize * 20.5,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              //CustomShape
              ClipPath(
                clipper: CategoryShapeCustom(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(defaultSize),
                    color: secondaryColorCustom,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TitleText(title: category.name ?? ""),
                        SizedBox(height: defaultSize),
                        Text(
                          "${category.numOfProducts ?? 0.0}+ Products",
                          style: TextStyle(
                              color: textColorCustom.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15,
                    child: FadeInImage.assetNetwork(
                        placeholder: "assets/spinner.gif",
                        image: category.image ?? ""),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
