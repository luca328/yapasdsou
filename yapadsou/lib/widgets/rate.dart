import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class Rate extends StatelessWidget {
  const Rate(this.rate, {super.key});

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: rate > 0 && rate <= 5 ? CustomColors.gold : CustomColors.lighterGrey),
        Icon(Icons.star, color: rate > 1 && rate <= 5 ? CustomColors.gold : CustomColors.lighterGrey),
        Icon(Icons.star, color: rate > 2 && rate <= 5 ? CustomColors.gold : CustomColors.lighterGrey),
        Icon(Icons.star, color: rate > 3 && rate <= 5 ? CustomColors.gold : CustomColors.lighterGrey),
        Icon(Icons.star, color: rate > 4 && rate <= 5 ? CustomColors.gold : CustomColors.lighterGrey),
      ],
    );
  }
}
