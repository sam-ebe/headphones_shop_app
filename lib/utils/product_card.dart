import 'package:flutter/material.dart';
import 'package:headphones_shop_app/constants.dart';
import 'package:headphones_shop_app/models/product.dart';
import 'package:headphones_shop_app/size_config.dart';
import 'package:headphones_shop_app/utils/home_body.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press(),
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
            color: secondaryColorCustom,
            borderRadius: BorderRadius.circular(30)),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/spinner.gif",
                  image: product.image!,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(title: product.name!),
              ),
              Text("${product.price!}€")
            ],
          ),
        ),
      ),
    );
  }
}
