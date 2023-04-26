import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class CustomTextStyles {
  static TextStyle title({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: "IntegralCF",
      fontSize: 32,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle subtitle({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: "IntegralCF",
      fontSize: 20,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle normalInterText({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontFamily: "inter",
      fontSize: 16,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle normalText({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontFamily: "IntegralCF",
      fontSize: 16,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle normalTextItalic({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontFamily: "IntegralCF",
      fontSize: 16,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle titleItalic({Color color = CustomColors.lightGrey}) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: "IntegralCF",
      fontSize: 32,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.none,
    );
  }
}
