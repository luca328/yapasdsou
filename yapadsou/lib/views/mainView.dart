import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

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
                icon: Icon(Icons.home)
              ),
              Tab(
                icon: Icon(Icons.add)
              ),
              Tab(
                icon: Icon(Icons.person)
              )
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Home(),
            AddPlan(),
            Profil(),
          ]
        ),
      )
    );
  }
}