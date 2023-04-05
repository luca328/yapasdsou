import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/views/onboarding.dart';
import 'package:yapadsou/views/register.dart';
import 'package:yapadsou/assets/colors/colors.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add_reaction_sharp, color: CustomColors.black),
              ),
              Tab(
                icon: Icon(Icons.web_asset_off_outlined,
                    color: CustomColors.black),
              ),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            Onboarding(),
            Register(),
          ]),
        ));
  }
}
