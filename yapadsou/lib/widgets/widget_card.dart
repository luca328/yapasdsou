import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String brandImage;
  final String logo;

  const WidgetCard({
    super.key,
    required this.brandImage,
    required this.logo,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context,) {
    return Container(
      width: 159,
      height: 162,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  brandImage,
                  width: 144,
                  height: 90,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(65, 68),
            child : Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center( 
                child: Image.asset(
                  logo,
                  width: 30,
                  height: 30,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
