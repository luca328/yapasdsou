import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/views/register.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/basic_Fit.dart';
import 'package:yapadsou/widgets/barathon.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pageIndex = 0;

  final List<Widget> _widegts = [
    BasicFitWidget(),
    BarathonWidget(),
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
          const Spacer(),
          CarouselIndicator(
            count: _widegts.length,
            index: pageIndex,
            width: 30,
          ),
          const Spacer(),
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
          const Spacer(),
          Text(
            'Accède aux 500 bons plans \n qu’on te propose chaque mois',
            style: CustomTextStyles.normalInterText(
                color: CustomColors.brokenWhite),
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
