import 'package:flutter/material.dart';
import 'package:yapadsou/assets/images/image.dart';

class otacosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  CustomImages.sport,
                  width: 144,
                  height: 90,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Abonnement 1 an',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '2 mois offerts',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(65, 75),
            child : Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Image.asset(
                  CustomImages.basicFit,
                  width: 30,
                  height: 30,
                ),
              ),
            )
          )

          /*
            child: Image.asset(
              CustomImages.otacos,
              width: 30,
              height: 30,
            ),
          ),*/
        ],
      ),
    );
  }
}
