import 'package:flutter/material.dart';
import 'package:yapadsou/assets/colors/colors.dart';
import 'package:yapadsou/views/onboarding.dart';
import 'package:flutter/services.dart';
import 'package:amplitude_flutter/amplitude.dart';


class Yapasdsou extends StatefulWidget {
  final String api_key;
  const Yapasdsou(
    this.api_key,
    {super.key}
  );
  @override
  State<Yapasdsou> createState() => _YapasdsouState();
}

class _YapasdsouState extends State<Yapasdsou> {
  late String message;
  late Amplitude analytics;
  @override
  void initState() {
    super.initState();
    analytics = Amplitude.getInstance(instanceName: 'Yapasdsou');
    analytics.setUseDynamicConfig(true);
    analytics.setServerUrl('https://api2.amplitude.com');
    analytics.init(widget.api_key);
    analytics.enableCoppaControl();
    analytics.setUserId('Yapasdsou_test');
    analytics.trackingSessionEvents(true);
    analytics.logEvent('app Started');
    Map<String, dynamic> userProps = {
      'date': DateTime.now().toString(),
      'name': 'yapasdsou',
      'build': '1.0',
    };
      analytics.setUserProperties(userProps);
  }
  Future<void> flushEvents() async{
    await analytics.uploadEvents();
    setMessage("Flushed events");
  }

  void setMessage(String message) {
    setState(() {
      message = message;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.blue),
        ),
        home: const Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(child: Onboarding())));
  }
}
