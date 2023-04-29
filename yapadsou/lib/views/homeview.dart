import 'package:flutter/material.dart';
import 'package:yapadsou/assets/images/image.dart';
import 'package:yapadsou/views/registerview.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/searchbar.dart';
import 'package:yapadsou/widgets/simple_icon_button.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/widget_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        color: CustomColors.blue,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      'COUCOU TOI',
                      style: CustomTextStyles.title(
                          color: CustomColors.brokenWhite),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      'T\'es en manque de thunes ?',
                      style: CustomTextStyles.normalInterText(
                          color: CustomColors.brokenWhite),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: SearchBar(
                  inputKey: "searchBar",
                  inputText: "Cherche ton bon plan",
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: CustomColors.brokenWhite,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SimpleIconButton(
                                    width: 57,
                                    height: 57,
                                    pressed: () => {},
                                    borderRadius: BorderRadius.circular(10),
                                    pressed: () {},
                                    icon: Icons.shopping_bag_outlined,
                                    iconSize: 24),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text("courses",
                                    style: CustomTextStyles.normalBoldText(
                                        color: CustomColors.blue))
                              ],
                            ),
                            Column(
                              children: [
                                SimpleIconButton(
                                    width: 57,
                                    height: 57,
                                    pressed: () => {},
                                    color: CustomColors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    pressed: () {},
                                    icon: Icons.directions_run_outlined,
                                    iconSize: 24),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text("sport",
                                    style: CustomTextStyles.normalBoldText(
                                        color: CustomColors.red))
                              ],
                            ),
                            Column(
                              children: [
                                SimpleIconButton(
                                    width: 57,
                                    height: 57,
                                    pressed: () => {},
                                    color: CustomColors.lightBlue,
                                    borderRadius: BorderRadius.circular(10),
                                    icon: Icons.train,
                                    iconSize: 24),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text("trains",
                                    style: CustomTextStyles.normalBoldText(
                                        color: CustomColors.lightBlue))
                              ],
                            ),
                            Column(
                              children: [
                                SimpleIconButton(
                                    width: 57,
                                    height: 57,
                                    pressed: () => {},
                                    color: CustomColors.washedBlue,
                                    borderRadius: BorderRadius.circular(10),
                                    icon: Icons.celebration_outlined,
                                    iconSize: 24),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text("soirées",
                                    style: CustomTextStyles.normalBoldText(
                                        color: CustomColors.washedBlue))
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "LES PLANS DU MOMENTS",
                            style: CustomTextStyles.normalText(
                                color: CustomColors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          runAlignment: WrapAlignment.spaceEvenly,
                          runSpacing: 10,
                          spacing: 10,
                          children: [
                            WidgetCard(
                              brandImage: CustomImages.sport,
                              logo: CustomImages.basicFit,
                              subTitle: "2 mois offerts",
                              title: "Abonnement 1 an",
                              width: 159,
                              height: 162,
                              titleSize: 14,
                              subTitleSize: 10,
                            ),
                            WidgetCard(
                              brandImage: CustomImages.bar,
                              logo: CustomImages.barathon,
                              subTitle: "1 verre acheté = 1 offert",
                              title: "Le grand Barathon",
                              width: 159,
                              height: 162,
                              titleSize: 12,
                              subTitleSize: 10,
                            ),
                            WidgetCard(
                              brandImage: CustomImages.chambre,
                              logo: CustomImages.biliJeu,
                              subTitle: "Pas besoin de garants",
                              title: "Garantie appart",
                              width: 159,
                              height: 162,
                              titleSize: 12,
                              subTitleSize: 10,
                            ),
                            WidgetCard(
                              brandImage: CustomImages.tacos,
                              logo: CustomImages.otacos,
                              subTitle: "5€99, dépêche toi !",
                              title: "Giga MAXI Tacos",
                              width: 159,
                              height: 162,
                              titleSize: 12,
                              subTitleSize: 10,
                            ),
                            WidgetCard(
                              brandImage: CustomImages.sport,
                              logo: CustomImages.basicFit,
                              subTitle: "2 mois offerts",
                              title: "Abonnement 1 an",
                              width: 159,
                              height: 162,
                              titleSize: 12,
                              subTitleSize: 10,
                            ),
                            WidgetCard(
                              brandImage: CustomImages.sport,
                              logo: CustomImages.basicFit,
                              subTitle: "2 mois offerts",
                              title: "Abonnement 1 an",
                              width: 159,
                              height: 162,
                              titleSize: 12,
                              subTitleSize: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]));
  }
}
