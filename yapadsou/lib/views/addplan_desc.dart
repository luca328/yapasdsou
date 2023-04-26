import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/views/planview.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/inputs.dart';
import 'package:yapadsou/widgets/simple_icon_button.dart';

class AddPlanDescView extends StatefulWidget {
  const AddPlanDescView({super.key});

  @override
  State<AddPlanDescView> createState() => _AddPlanDescViewState();
}

class _AddPlanDescViewState extends State<AddPlanDescView> {
  int pageIndex = 0;
  final titreController = TextEditingController();
  final descriptionController = TextEditingController();
  final lienController = TextEditingController();
  final pageController = PageController();
  late List<Widget> _widgets = [];

  @override
  void initState() {
    _widgets = [
      //widget_card
      Form(
        child: Container(
          width: double.infinity,
          color: CustomColors.brokenWhite,
          child: Column(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TITRE", style: CustomTextStyles.subtitle(color: Colors.black),),
                Inputs(
                  validate: false,
                  controller: titreController,
                  inputKey: "titre",
                  inputText: "Abonnement 1 an Basic-Fit",
                  obscured: false,
                  passwordController: TextEditingController(text: ""),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DESCRIPTION", style: CustomTextStyles.subtitle(color: Colors.black),),
                Inputs(
                  nbLines: 4,
                  validate: false,
                  controller: descriptionController,
                  inputKey: "titre",
                  inputText: "Abonnement 1 an Basic-Fit",
                  obscured: false,
                  passwordController: TextEditingController(text: ""),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LIEN", style: CustomTextStyles.subtitle(color: Colors.black),),
                Inputs(
                  validate: false,
                  controller: lienController,
                  inputKey: "titre",
                  inputText: "Abonnement 1 an Basic-Fit",
                  obscured: false,
                  passwordController: TextEditingController(text: ""),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 30,),
            SimpleButton(text: "SUIVANT", pressed: ()=> pageController.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.ease), color: CustomColors.blue)
          ]),
        ),
      ),
      Container(
        color: Colors.transparent,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Text("PHOTO DU BON PLAN", style: CustomTextStyles.subtitle(color: Colors.black),),
            const SizedBox(height: 30),
            SimpleIconButton(width: 200, height: 200, iconSize: 80, icon: Icons.add, color: CustomColors.blue, borderRadius: BorderRadius.circular(30.0),),
            const Spacer(),
            SimpleButton(
              text: "AJOUTER CE BON PLAN",
              pressed: ()=> { Navigator.push(context, MaterialPageRoute(builder: (context) => PlanView(
              titre: titreController.text,
              description: descriptionController.text,
              lien: lienController.text,
              rating: 4,
              )))},
              color: CustomColors.blue
            ),
          ],
        ),
      )
    ];
    super.initState();
  }

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
                    padding: const EdgeInsets.only(left: 10, top: 60),
                    child: Text(
                      'AJOUTER',
                      style: CustomTextStyles.title(
                          color: CustomColors.brokenWhite),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Un bon plan pour en faire',
                          style: CustomTextStyles.normalInterText(
                            color: CustomColors.brokenWhite),
                            textAlign: TextAlign.left,
                        ),
                        Text(
                          'profiter les autres',
                          style: CustomTextStyles.normalInterText(
                            color: CustomColors.brokenWhite),
                            textAlign: TextAlign.left,
                        ),
                      ]
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(30),
              ),
              Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: CustomColors.brokenWhite,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0))),
                            child: Column(
                              children: [
                                const Spacer(),
                                CarouselIndicator(
                                  count: _widgets.length,
                                  index: pageIndex,
                                  width: 30,
                                  color: Colors.grey,
                                  activeColor: CustomColors.blue,
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 500,
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  child: PageView(
                                    controller: pageController,
                                    children: _widgets,
                                    onPageChanged: (index) {
                                      setState(() {
                                        pageIndex = index;
                                      });
                                    },
                                  ),
                                ),
                            const Spacer()
                          ],
                        )
                      ),
                    )
                  ],
                )
              )
          ]
      ),
    );
  }
}
