import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_screens/IntroPage.dart';
import 'package:switching_screens/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
            () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(
              builder: (context)=> IntroPage()
          )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text('Classico', style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}