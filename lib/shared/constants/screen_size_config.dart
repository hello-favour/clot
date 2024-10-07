import 'package:flutter/material.dart';

class ScreenSizeConfig {
  static late double height;
  static late double width;

  static void init(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}
