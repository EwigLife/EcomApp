import 'dart:async';

import 'package:earnerssapp/screens/login.dart';
import 'package:earnerssapp/utils/constants.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Login()), (_) => false);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: kBackgroundColor),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Image.asset('assets/icons/icon.gif'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,),
                    ),
                    Text('EARNERSS',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),)
                  ],
                ),
              ),
              Expanded(flex: 1, child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('Online Education for EveryOne', style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    )),
                  )
                ],
              ),),
            ],
          ),
        ],
      ),
    );
  }

}



