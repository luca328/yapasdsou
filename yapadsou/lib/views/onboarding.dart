import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pageIndex = 0;

  List<Widget> _widegts = [
    Container(height: 300, color: CustomColors.gold),
    Container(height: 300, color: CustomColors.grey),
    Container(height: 300, color: CustomColors.lightBlue),
  ];
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
                'PAS DE SOUS ?',
                style: CustomTextStyles.title(color: CustomColors.brokenWhite),
              ),
              Text(
                'Y’A PADSOU.',
                style: CustomTextStyles.title(color: CustomColors.pink),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CarouselIndicator(
            count: _widegts.length,
            index: pageIndex,
            width: 30,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: PageView(
              children: _widegts,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Accède aux 500 bons plans \n qu’on te propose chaque mois',
            style: CustomTextStyles.normalInterText(
                color: CustomColors.brokenWhite),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 45,
          ),
          SimpleButton(
            text: "C’est parti !",
            pressed: () => {DefaultTabController.of(context).animateTo(1)},
            color: CustomColors.pink,
          )
        ]));
  }
}
