import 'package:flutter/material.dart';
import 'package:yapadsou/ui/typographie.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.text,
    required this.pressed,
    required this.color,
    required this.width,
    required this.height,
  });
  final String text;
  final void Function() pressed;
  final Color color;
  final double width;
  final double height;
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
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        child:  Text(text, style: CustomTextStyles.normalBoldText(color: Colors.white),),),
      ),
    ]);
  }
}
