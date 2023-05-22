import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/rate.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.text,
    required this.rate,
    required this.author,
    required this.authorImage,
  });

  final String text;
  final int rate;
  final String author;
  final String authorImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 313,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
      ),
      child: Column(
        children: [
          const Spacer(),
          SizedBox(
            width: 290,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(authorImage),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Proposé par", style: CustomTextStyles.normalInterText()),
                    Text(author, style: CustomTextStyles.normalBoldInterText(color: Colors.black),),
                  ],),
                const Spacer(),
                Rate(rate),
                const Spacer(),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 250,
            child: Text(text, style: CustomTextStyles.normalInterText(color: CustomColors.black),)),
          const Spacer(),
        ],
      )
    );
  }
}
