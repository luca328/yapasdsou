import 'package:flutter/material.dart';

class CustomColors {
  static const pink = Color(0xFFFC77A6);
  static const grey = Color(0xFF747685);
  static const lightGrey = Color(0xFFA6A6A6);
  static const lighterGrey = Color(0xFFE3E3E3);
  static const blue = Color(0xFF5F67EA);
  static const washedBlue = Color(0xFF7C8CF9);
  static const black = Color(0xFF1B191A);
  static const lightGrayContainer = Color(0xFFBABFCD);
  static const brokenWhite = Color(0xFFF2F2F2);
  static const red = Color(0xFFF4696A);
  static const lightBlue = Color(0xFF579BFE);
  static const gold = Color(0xFFFFC107);

  static Color getColor(String colorName) {
    switch (colorName) {
      case 'pink':
        return pink;
      case 'grey':
        return grey;
      case 'lightGrey':
        return lightGrey;
      case 'lighterGrey':
        return lighterGrey;
      case 'blue':
        return blue;
      case 'washedBlue':
        return washedBlue;
      case 'black':
        return black;
      case 'lightGrayContainer':
        return lightGrayContainer;
      case 'brokenWhite':
        return brokenWhite;
      case 'red':
        return red;
      case 'lightBlue':
        return lightBlue;
      case 'gold':
        return gold;
    }
    return blue;
  }
}
