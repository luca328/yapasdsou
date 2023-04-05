import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/ui/typographie.dart';
import 'package:yapadsou/widgets/searchbar.dart';

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
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'COUCOU TOI',
                    style:
                        CustomTextStyles.title(color: CustomColors.brokenWhite),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'T\'es en manque de thunes ?',
                    style: CustomTextStyles.normalInterText(
                        color: CustomColors.brokenWhite),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const SearchBar(
                inputKey: "searchBar",
                inputText: "Cherche ton bon plan",
              ),
            ]));
  }
}
