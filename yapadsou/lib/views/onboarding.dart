import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/assets/images/image.dart';

class Onboarding extends StatelessWidget {
  final String text;
  const Onboarding({super.key, this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.blue,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(CustomImages.tacos)])
          ],
        ));
  }
}
