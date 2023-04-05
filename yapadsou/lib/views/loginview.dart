import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/registerview.dart';
import 'package:yapadsou/widgets/button.dart';
import 'package:yapadsou/widgets/inputs.dart';


class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
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
          Text("TE REVOILÀ 🔥", style: CustomTextStyles.title(color: CustomColors.black)),
          Text("Reviens vite pour profiter\ndes bons plans", textAlign: TextAlign.center, style: CustomTextStyles.normalText(color: CustomColors.black)),
          const SizedBox(height: 50),
          Material(
            child: Form(
            key: _formKey,
            child: Container(
              width: MediaQuery.of(context).size.width*0.9,
              color: CustomColors.brokenWhite,
              child: Column(
                children: <Widget>[
                  Inputs(
                    validate: false,
                    controller: emailController,
                    inputKey: "email",
                    inputText: "Ton adresse e-mail",
                    obscured: false,
                    passwordController: TextEditingController(text: ""),
                  ),
                  const SizedBox(height: 10),
                  Inputs(
                    validate: false,
                    controller: passwordController,
                    inputKey: "password",
                    inputText: "Ton mot de passe",
                    obscured: true,
                    passwordController: TextEditingController(text: ""),
                  ),
                  const SizedBox(height: 10),
                  Text("Mot de passe oublié ?", style: CustomTextStyles.normalInterText(),),
                  const SizedBox(height: 10),
                  SimpleButton(text: "SE CONNECTER", pressed: () =>  {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Row(children: [
                              Text(emailController.text),
                              const Text(" - "),
                              Text(passwordController.text),
                            ]
                            )
                            );
                          },
                      )
                    }
                  }, color: CustomColors.blue),
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
                Text("Pas encore inscrit ? ", style: CustomTextStyles.normalInterText()),
                RichText(
                  text: TextSpan(
                    text: "Allez-viens !",
                    style: CustomTextStyles.normalInterText(color: CustomColors.blue),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    }
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
