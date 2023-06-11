import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/homeview.dart';
import 'package:yapadsou/views/addplan_desc.dart';
import 'package:yapadsou/views/addplan_photo.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    getToken();
  }

  void getToken() async {
    await FirebaseMessaging.instance.getToken();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          bottomNavigationBar: const BottomAppBar(
            child: TabBar(tabs: <Widget>[
              Tab(
                  icon: Icon(
                Icons.home,
                color: CustomColors.blue,
              )),
              Tab(
                  icon: Icon(
                Icons.add_circle,
                color: CustomColors.blue,
              )),
              Tab(
                  icon: Icon(
                Icons.account_circle,
                color: CustomColors.blue,
              ))
            ]),
          ),
          body: TabBarView(children: <Widget>[
            const HomeView(),
            const AddPlanDescView(),
            AddplanPhotoView(),
          ]),
        ));
  }
}
