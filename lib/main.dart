import 'package:finalcuisine/pages/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );

  }
}

