import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/firebase_options.dart';
import 'package:yapadsou/yapadsou.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const Yapasdsou('_e7QUWJSLKmlDQLbARTdRzUBV3iB9UfC')
  );
  FirebaseMessaging.instance;
  runApp(const Yapasdsou());
}
