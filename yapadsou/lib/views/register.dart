import 'package:flutter/material.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/widgets/inputs.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: CustomColors.brokenWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Text("BIENVENUE 😎",
              style: CustomTextStyles.title(color: CustomColors.black)),
          Text("Inscris toi pour avoir les\nmeilleurs plans étudiants!",
              textAlign: TextAlign.center,
              style: CustomTextStyles.normalText(color: CustomColors.black)),
          const SizedBox(height: 50),
          Material(
            child: Form(
              key: _formKey,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                color: CustomColors.brokenWhite,
                child: Column(
                  children: <Widget>[
                    const Inputs(
                      inputKey: "email",
                      inputText: "Ton adresse e-mail",
                    ),
                    const SizedBox(height: 10),
                    const Inputs(
                      inputKey: "password",
                      inputText: "Ton mot de passe",
                    ),
                    const SizedBox(height: 10),
                    const Inputs(
                      inputKey: "confirm",
                      inputText: "Confirme ton mot de passe",
                    ),
                    const SizedBox(height: 100),
                    Text(
                      "En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                      style: CustomTextStyles.normalText(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "Déjà un compte ? Connecte-toi !",
              style: CustomTextStyles.normalText(),
            ),
          )
        ],
      ),
    );
  }
}
