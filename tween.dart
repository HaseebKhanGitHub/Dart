import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'ff'),
    );
  }
}

class MyHomePage extends StatefulWidget {


   MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200, end: 50.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.pink, end: Colors.green).animate(animationController);

    animationController.addListener(() {
      print('animation.value');
      setState(() {

      });
    });

    animationController.forward();

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Tween Animations'),
      ),
      body:Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      )
    );
  }
}
