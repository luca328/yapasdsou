import 'package:flutter/material.dart';

class simpleButton extends StatelessWidget {
  const simpleButton({
    super.key,
    required this.text,
    required this.pressed,
    required this.color,
  });
  final String text;
  final void Function() pressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      SizedBox(
        width: 261,
        height: 56,
        child: ElevatedButton(
            onPressed: pressed,
            child: Text(text),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(color),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))))),
      ),
    ]));
  }
}
