import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:earnerssapp/controllers/authController.dart';

class SignUp extends GetWidget<AuthController> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController uidController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Full Name"),
                controller: nameController,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                controller: emailController,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.black12,
                    color: Colors.pinkAccent,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){
                        controller.createUser(
                            nameController.text,emailController.text, passwordController.text, uidController.text);
                      },
                      child: Center(
                        child: Text('SignUp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text('Go Back',
                    style: TextStyle(color: Colors.pinkAccent,
                    fontSize: 20,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
