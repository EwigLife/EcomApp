import 'package:earnerssapp/controllers/authController.dart';
import 'package:earnerssapp/controllers/userController.dart';
import 'package:earnerssapp/screens/home.dart';

import 'package:earnerssapp/screens/profile.dart';
import 'package:earnerssapp/services/database.dart';
import 'package:earnerssapp/widgets/profileImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class OurDrawer extends StatefulWidget {
  @override
  _OurDrawerState createState() => _OurDrawerState();
}

class _OurDrawerState extends State<OurDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.pinkAccent,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Column(
                children: <Widget>[
                  ProfileImageView(),
                  SizedBox(height: 10,),
                  GetX<UserController>(
                    initState: (_) async {
                      Get.find<UserController>().user =
                      await Database().getUser(Get.find<AuthController>().user.uid);
                    },
                    builder: (_) {
                      if (_.user.name != null) {
                        return Text("Welcome \n" + _.user.name, style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),);
                      } else {
                        return Text("loading...");
                      }
                    },
                  ),
                  ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.home,),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.to(Home());
                  },
                  child: Text('Dashboard',
                    style: TextStyle(color: Colors.pinkAccent,),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.person_solid),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.to(Profile());
                    },
                  child: Text('Profile',
                    style: TextStyle(color: Colors.pinkAccent,),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.book_solid),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/SignUp');
                  },
                  child: Text('My Courses',
                    style: TextStyle(color: Colors.pinkAccent,),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.gear_solid),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/SignUp');
                  },
                  child: Text('Settings',
                    style: TextStyle(color: Colors.pinkAccent,),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(CupertinoIcons.padlock_solid),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Text('LogOut',
                    style: TextStyle(color: Colors.pinkAccent,),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}

