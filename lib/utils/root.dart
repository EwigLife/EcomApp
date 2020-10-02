import 'package:earnerssapp/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:earnerssapp/controllers/authController.dart';
import 'package:earnerssapp/controllers/userController.dart';
import 'package:earnerssapp/screens/home.dart';


class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return Home();
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
