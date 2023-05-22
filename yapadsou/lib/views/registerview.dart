import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/datas/authentication.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/loginview.dart';
import 'package:yapadsou/views/main_view.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/inputs.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

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
                width: MediaQuery.of(context).size.width * 0.9,
                color: CustomColors.brokenWhite,
                child: Column(
                  children: <Widget>[
                    Inputs(
                      controller: emailController,
                      inputKey: "email",
                      inputText: "Ton adresse e-mail",
                      obscured: false,
                      passwordController: TextEditingController(text: ""),
                    ),
                    const SizedBox(height: 10),
                    Inputs(
                      controller: passwordController,
                      inputKey: "password",
                      inputText: "Ton mot de passe",
                      obscured: true,
                      passwordController: TextEditingController(text: ""),
                    ),
                    const SizedBox(height: 10),
                    Inputs(
                      controller: confirmController,
                      inputKey: "confirm",
                      inputText: "Confirme ton mot de passe",
                      obscured: true,
                      passwordController: passwordController,
                    ),
                    const SizedBox(height: 100),
                    Text(
                      "En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                      style: CustomTextStyles.normalInterText(),
                    ),
                    SimpleButton(
                        width: 261,
                        height: 56,
                        text: "SE CONNECTER",
                        pressed: () => {
                              if (_formKey.currentState!.validate())
                                {
                                  Authentication.register(emailController.text, passwordController.text),
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MainView()),
                                  ),
                                },
                            },
                        color: CustomColors.blue),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Déjà un compte ? ",
                  style: CustomTextStyles.normalInterText(),
                ),
                RichText(
                  textDirection: TextDirection.ltr,
                  text: TextSpan(
                      text: "Connecte-toi",
                      style: CustomTextStyles.normalInterText(
                          color: CustomColors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
