import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:headphones_shop_app/constants.dart';
import 'package:headphones_shop_app/size_config.dart';
import 'package:headphones_shop_app/utils/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize responsive UI helper
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "icons/menu.svg",
            height: SizeConfig.defaultSize * 3, //30
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "icons/scan.svg",
              height: SizeConfig.defaultSize * 3.4, //34
            )),
        Center(
          child: Text(
            'Scan',
            style:
                TextStyle(color: textColorCustom, fontWeight: FontWeight.bold),
          ),
        ),
        // add margin to the right
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
