import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/assets/images/image.dart';
import 'package:yapadsou/views/onboarding.dart';
import 'package:yapadsou/widgets/widget_card.dart';

class Yapasdsou extends StatelessWidget {
  const Yapasdsou({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.blue),
        ),
        home: const Scaffold(resizeToAvoidBottomInset: false, body: Center(child: Onboarding())));
  } //WidgetCard(title: "test titre", subTitle: "test sous titre", brandImage: CustomImages.sport, logo: CustomImages.basicFit)
}
