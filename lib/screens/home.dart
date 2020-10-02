import 'package:earnerssapp/widgets/MainDrawer.dart';
import 'package:earnerssapp/widgets/MainSlider.dart';
import 'package:earnerssapp/widgets/categoryView.dart';
import 'package:earnerssapp/widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:earnerssapp/controllers/authController.dart';


class Home extends GetWidget<AuthController> {

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
        ],
      ),
      drawer: OurDrawer(),
      body: Stack(
              children: [
                Column(
                  children: <Widget>[
                    MainSlider(),
                    Container(
                      transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                      child: CategoryView()
                      ),
                      SizedBox(height: 0,),
                    Container(
                      child: Text('Recent Products'),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 320,
                      child: Products(),
                    ),
                  ],
                ),
              ],
            ),       
    );
  }
}


