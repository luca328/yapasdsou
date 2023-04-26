import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/assets/images/image.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/views/registerview.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/widget_card.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int pageIndex = 0;

  final List<Widget> _widegts = [
    //widget_card
    Container(
        height: 300,
        decoration: const BoxDecoration(
            color: CustomColors.brokenWhite,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))),
        child: Column(children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: 5,
            spacing: 10,
            children: [
              WidgetCard(
                brandImage: CustomImages.sport,
                logo: CustomImages.basicFit,
                subTitle: "2 mois offerts",
                title: "Abonnement 1 an",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.bar,
                logo: CustomImages.barathon,
                subTitle: "1 verre acheté = 1 offert",
                title: "Le grand Barathon",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.chambre,
                logo: CustomImages.biliJeu,
                subTitle: "Pas besoin de garants",
                title: "Garantie appart",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.tacos,
                logo: CustomImages.otacos,
                subTitle: "5€99, dépêche toi !",
                title: "Giga MAXI Tacos",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
            ],
          ),
        ])),
    Container(
        height: 300,
        decoration: const BoxDecoration(
            color: CustomColors.brokenWhite,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))),
        child: Column(children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: 5,
            spacing: 10,
            children: [
              WidgetCard(
                brandImage: CustomImages.sport,
                logo: CustomImages.basicFit,
                subTitle: "2 mois offerts",
                title: "Abonnement 1 an",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.bar,
                logo: CustomImages.barathon,
                subTitle: "1 verre acheté = 1 offert",
                title: "Le grand Barathon",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.chambre,
                logo: CustomImages.biliJeu,
                subTitle: "Pas besoin de garants",
                title: "Garantie appart",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.tacos,
                logo: CustomImages.otacos,
                subTitle: "5€99, dépêche toi !",
                title: "Giga MAXI Tacos",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
            ],
          ),
        ])),
    Container(
        height: 300,
        decoration: const BoxDecoration(
            color: CustomColors.brokenWhite,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))),
        child: Column(children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.spaceEvenly,
            runSpacing: 5,
            spacing: 10,
            children: [
              WidgetCard(
                brandImage: CustomImages.sport,
                logo: CustomImages.basicFit,
                subTitle: "2 mois offerts",
                title: "Abonnement 1 an",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.bar,
                logo: CustomImages.barathon,
                subTitle: "1 verre acheté = 1 offert",
                title: "Le grand Barathon",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.chambre,
                logo: CustomImages.biliJeu,
                subTitle: "Pas besoin de garants",
                title: "Garantie appart",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
              WidgetCard(
                brandImage: CustomImages.tacos,
                logo: CustomImages.otacos,
                subTitle: "5€99, dépêche toi !",
                title: "Giga MAXI Tacos",
                width: 104.03,
                height: 105.99,
                titleSize: 12,
                subTitleSize: 6.54,
              ),
            ],
          ),
        ]))
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
          SizedBox(
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
            'Accède aux 500 bons plans\nqu’on te propose chaque mois',
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
