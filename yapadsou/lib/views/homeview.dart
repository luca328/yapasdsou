import 'package:flutter/material.dart';
import 'package:yapadsou/assets/images/image.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/datas/firestore.dart';
import 'package:yapadsou/models/category.dart';
import 'package:yapadsou/models/plan.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/searchbar.dart';
import 'package:yapadsou/widgets/simple_icon_button.dart';
import 'package:yapadsou/widgets/widget_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Category> categories = [];
  List<Plan> plans = [];

  @override
  void initState() {
    super.initState();
    getCategories();
    getPlans();
  }

  void getCategories() async {
    final categoriesList = await Firestore.getAllCategories();
    setState(() {
      categories = categoriesList;
    });
  }

  void getPlans() async {
    final plansList = await Firestore.getAllPlans();
    setState(() {
      plans = plansList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
                  child: CustomSearchBar(
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
                            children: categories
                                .map(
                                  (category) => Column(
                                    children: [
                                      SimpleIconButton(
                                          width: 57,
                                          height: 57,
                                          pressed: () => {},
                                          color: CustomColors.getColor(
                                              category.colorName),
                                          borderRadius: BorderRadius.circular(10),
                                          icon: CustomImages.getIcon(
                                              category.iconName),
                                          iconSize: 24),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(category.title,
                                          style: CustomTextStyles.normalBoldText(
                                              color: CustomColors.getColor(
                                                  category.colorName)))
                                    ],
                                  ),
                                )
                                .toList(),
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
                            children: plans.map(
                              (plan) => WidgetCard(
                                brandImage: CustomImages.getImage(plan.mainImage),
                                logo: CustomImages.getImage(plan.logo),
                                subTitle: plan.subtitle,
                                title: plan.title,
                                width: 159,
                                height: 162,
                                titleSize: 14,
                                subTitleSize: 10,
                                imageHeight: 90,
                                imageWidth: 144,
                                logoSize: 30,
                                logoBorderSize: 36
                              )
                            ).toList()
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ])),
    );
  }
}
