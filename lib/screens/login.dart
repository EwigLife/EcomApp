
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:earnerssapp/controllers/authController.dart';
import 'package:earnerssapp/screens/signup.dart';

class Login extends GetWidget<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('Welcome',
                        style: TextStyle(fontSize: 60),
                      ),
                    ),
                    Container(
                      child: Text('!',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 60),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text('Earnerss',
                    style: TextStyle(fontSize: 60),
                  ),
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
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(top: 15,),
                    child:
                    InkWell(
                      child: Text('Forget Password?',
                        style: TextStyle(
                          color: Colors.pinkAccent,),
                      ),
                    ),
                  ),
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
                          controller.login(
                              emailController.text, passwordController.text);
                        },
                        child: Center(
                          child: Text('LOGIN',
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
                SizedBox(height:20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                  child: Container(
                    height: 50,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,),
                        color:Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(child:
                          ImageIcon(
                              AssetImage('assets/images/google.png'),
                          ),
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: Text('Log In With Google',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('New To Earnerss'),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Get.to(SignUp());
                      },
                      child: Text('Register',
                        style: TextStyle(color: Colors.pinkAccent,),),
                    ),
                  ],
                ),
                // RaisedButton(
                //   child: Text("Log In"),
                //   onPressed: () {
                //     controller.login(
                //         emailController.text, passwordController.text);
                //   },
                // ),
                // FlatButton(
                //   child: Text("Sign Up"),
                //   onPressed: () {
                //     Get.to(SignUp());
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
