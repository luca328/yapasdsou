import 'package:flutter/material.dart';
import 'package:yapadsou/views/registerview.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/searchbar.dart';
import 'package:yapadsou/widgets/button.dart';

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
                    padding: const EdgeInsets.only(left: 30),
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
                  decoration: const BoxDecoration(
                      color: CustomColors.brokenWhite,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                ),
              )
            ]));
  }
}
