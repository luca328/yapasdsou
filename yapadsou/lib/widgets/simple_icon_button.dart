import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class SimpleIconButton extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;
  final Color color;
  final Color iconColor;
  final void Function() pressed;
  final double iconSize;
  BorderRadiusGeometry borderRadius;

  SimpleIconButton({
    required this.width,
    required this.height,
    required this.icon,
    required this.iconSize,
    required this.pressed,
    this.iconColor = Colors.white,
    this.color = CustomColors.blue,
    BorderRadiusGeometry? borderRadius,
    super.key,
  }) : borderRadius = borderRadius ?? BorderRadius.circular(0);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: pressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: borderRadius))),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        ),
      ),
    ]);
  }
}
