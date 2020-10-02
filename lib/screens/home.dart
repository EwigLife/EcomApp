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
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Center(child: Text('R & R APPARELS')),
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
      body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      MainSlider(),
                      Container(
                        transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                        child: CategoryView()
                        ),
                        SizedBox(height: 0,),
                      Container(
                        child: Text('Recent Products',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Products(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),       
    );
  }
}


