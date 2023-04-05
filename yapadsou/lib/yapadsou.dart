import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/registerview.dart';

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
        home: const Scaffold(resizeToAvoidBottomInset: false, body: Register()));
  }
}
