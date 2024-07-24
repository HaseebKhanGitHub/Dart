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
    var myOpc = 1.0;
    bool flag = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Animations Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: myOpc,
                duration: Duration(seconds: 1),
                curve: Curves.linear,
              child:Container(
                width: 200,
                height: 100,
                color: Colors.deepOrange,
              ) ,
            ),
            ElevatedButton(onPressed: (){
              if(flag){
                myOpc = 0.0;
                flag = false;
              } else {
                myOpc = 1.0;
                flag = true;
              }

              setState(() {

              });
            }, child: Text('Close'))
          ],
        ),
      )

    );
  }
}
