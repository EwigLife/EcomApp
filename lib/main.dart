import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:earnerssapp/controllers/bindings/authBinding.dart';
import 'package:earnerssapp/utils/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      home: Root(),
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.white,
        fontFamily: 'RussoOne',
      ),
    );
  }
}
