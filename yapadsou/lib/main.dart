import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yapadsou/firebase_options.dart';
import 'package:yapadsou/yapadsou.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const Yapasdsou('_e7QUWJSLKmlDQLbARTdRzUBV3iB9UfC')
  );
}
