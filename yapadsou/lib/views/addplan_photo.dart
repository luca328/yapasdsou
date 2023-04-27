import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/views/planview.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/inputs.dart';
import 'package:yapadsou/widgets/simple_icon_button.dart';

class AddplanPhotoView extends StatelessWidget {
  AddplanPhotoView({super.key});

  final pseudoController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                    'MON PROFIL',
                    style:
                        CustomTextStyles.title(color: CustomColors.brokenWhite),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Wrap(direction: Axis.vertical, children: [
                    Text(
                      'Modifie tes infos affichées aux',
                      style: CustomTextStyles.normalInterText(
                          color: CustomColors.brokenWhite),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'autres sur l\'app',
                      style: CustomTextStyles.normalInterText(
                          color: CustomColors.brokenWhite),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30),
            ),
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: CustomColors.brokenWhite,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Form(
                  child: Container(
                    width: double.infinity,
                    color: CustomColors.brokenWhite,
                    child: Column(children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "MON PSEUDO",
                            style:
                                CustomTextStyles.subtitle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Inputs(
                            validate: false,
                            controller: pseudoController,
                            inputKey: "pseudo",
                            inputText: "Entrez votre pseudo",
                            obscured: false,
                            passwordController: TextEditingController(text: ""),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ADRESSE E-MAIL",
                            style:
                                CustomTextStyles.subtitle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Inputs(
                            validate: false,
                            controller: emailController,
                            inputKey: "email",
                            inputText: "Entrez votre e-mail",
                            obscured: false,
                            passwordController: TextEditingController(text: ""),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MOT DE PASSE",
                            style:
                                CustomTextStyles.subtitle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Inputs(
                            validate: false,
                            controller: passwordController,
                            inputKey: "password",
                            inputText: "Entrez votre mot de passe",
                            obscured: true,
                            passwordController: TextEditingController(text: ""),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      const Spacer(),
                      SimpleButton(
                          text: "ENREGISTRER",
                          pressed: () => {},
                          color: CustomColors.blue),
                      const SizedBox(
                        height: 30,
                      )
                    ]),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
