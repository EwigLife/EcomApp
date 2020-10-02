import 'package:earnerssapp/widgets/MainDrawer.dart';
import 'package:earnerssapp/widgets/profileImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:earnerssapp/controllers/authController.dart';



class Profile extends GetWidget<AuthController> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              controller.signOut();
            },
          ),
          Center(
            child: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
            ),
          )
        ],
      ),
      drawer: OurDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ProfileImageView(),
          ),

        ],
      ),
    );
  }
}

