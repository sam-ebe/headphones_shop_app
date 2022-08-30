import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:headphones_shop_app/constants.dart';
import 'package:headphones_shop_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Headphones Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // Default text font and color
        textTheme: GoogleFonts.dmSansTextTheme().apply(
          displayColor: textColorCustom,
        ),
        appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light),
      ),
      home: HomePage(),
    );
  }
}
