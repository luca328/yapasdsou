import 'package:flutter/material.dart';
import 'package:yapadsou/views/register.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/basic_Fit.dart';
import 'package:yapadsou/widgets/barathon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.blue,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(60),
        child: Column(children: [
          Column(
            children: [
              Text(
                'COUCOU TOI',
                style: CustomTextStyles.title(color: CustomColors.brokenWhite),
                textAlign: TextAlign.left,
              ),
              Text(
                'T\'es en manque de thunes ?',
                style: CustomTextStyles.normalInterText(
                    color: CustomColors.brokenWhite),
                textAlign: TextAlign.left,
              )
            ],
          ),
          const Spacer(),
          Text(
            'Accède aux 500 bons plans \n qu’on te propose chaque mois',
            style: CustomTextStyles.normalInterText(
                color: CustomColors.brokenWhite),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          SimpleButton(
            text: "C’est parti !",
            pressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
            color: CustomColors.pink,
          )
        ]));
  }
}
