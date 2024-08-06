

import 'dart:async';

import 'package:animated_container/home_page.dart';
import 'package:animated_container/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = 'login';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Timer(Duration(seconds: 2), () {
     Navigator.pushReplacement(context,
         MaterialPageRoute(builder: (context)=> LoginPage()));

   });*/

    whereToGo();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(

          child: Icon(
            Icons.account_circle, color: Colors.white, size: 100,
          ),
        ),
      ),
    );
  }


  Future<void> whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);


    Timer(Duration(seconds: 2), () {
      if(isLoggedIn != null){
        if(isLoggedIn){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomePage()));
        } else{
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => LoginPage()));
        }
      } else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }

    });
  }
}