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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    bool isFirst = true;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();

   /* Timer(Duration(seconds: 4), (){
      reload();
    });*/
  }
    /*void reload(){

       setState(() {
         isFirst = false;
       });
    }*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Animations CrossFade'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ AnimatedCrossFade(
            duration: Duration(seconds: 2),
            firstChild: Container(
              width: 200,
              height: 200,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.orange,
              ),

            ),

            sizeCurve:Curves.fastOutSlowIn ,
            secondChild: Image.asset('assets/images/football.png',
            width: 100,
            height: 100,),
            crossFadeState: isFirst ?  CrossFadeState.showFirst : CrossFadeState.showSecond  ,
          ),

            ElevatedButton(onPressed: (){
              isFirst = !isFirst; // Toggle the state
              setState(() {

              });
            }, child: Text('show')

            )]
        ),
      )

    );
  }
}
