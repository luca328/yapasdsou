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
  final BorderRadius? borderRadius;

  const SimpleIconButton({
    required this.width,
    required this.height,
    required this.icon,
    required this.iconSize,
    required this.pressed,
    this.iconColor = Colors.white,
    this.color = CustomColors.blue,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ));
  }
}
