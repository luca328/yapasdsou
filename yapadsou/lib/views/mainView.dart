import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/homeview.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  @override
  Widget build(BuildContext context){
    return const DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, color: CustomColors.blue,)
              ),
              Tab(
                icon: Icon(Icons.add_circle, color: CustomColors.blue,)
              ),
              Tab(
                icon: Icon(Icons.account_circle, color: CustomColors.blue,)
              )
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomeView(),
            Text("test"),
            Text("test"),
        //     AddPlan(),
        //     Profil(),
          ]
        ),
      )
    );
  }
}