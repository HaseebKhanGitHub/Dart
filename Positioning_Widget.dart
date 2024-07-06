import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Positioned Widget"),
        backgroundColor: Colors.blue,
      ),
       body: Container(
         width: 500,
         height: 200,
         color: Colors.black,
         child: Stack(
           children: [
             Positioned(
               bottom: 20,
               left: 22,
               child: Container(
                 width: 100,
                 height: 100,
                 color: Colors.white,
               ),
             )
           ],

         ),
       )
    );
  }
}

