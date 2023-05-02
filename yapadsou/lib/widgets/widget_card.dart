import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class WidgetCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String brandImage;
  final String logo;
  final double height;
  final double width;
  final double titleSize;
  final double subTitleSize;
  final double imageHeight;
  final double imageWidth;
  final double logoSize;
  final double logoBorderSize;

  const WidgetCard({
    super.key,
    required this.brandImage,
    required this.logo,
    required this.subTitle,
    required this.title,
    required this.width,
    required this.height,
    required this.titleSize,
    required this.subTitleSize,
    required this.imageHeight,
    required this.imageWidth,
    required this.logoSize,
    required this.logoBorderSize,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColors.brokenWhite,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  brandImage,
                  width: imageWidth,
                  height: imageHeight,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Spacer(),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.black,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: subTitleSize,
                    color: CustomColors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 60,
            bottom: 50,
            // mainAxisAlignement: MainAxisAlignement.center,
            // mainAxisSize:
            child : Container(
              width: logoBorderSize,
              height: logoBorderSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center( 
                child: Image.asset(
                  logo,
                  width: logoSize,
                  height: logoSize,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
