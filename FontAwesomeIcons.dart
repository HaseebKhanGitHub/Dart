import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: Text("Flutter Icon Widget"),
        backgroundColor: Colors.blue,
      ),
       body: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(
               Icons.ac_unit_outlined , size: 100, color: Colors.teal,
             ),
             SizedBox(width: 11,),
             FaIcon(FontAwesomeIcons.amazon, color: Colors.orange,size: 100,)
           ],
         ),
       )
    );
  }
}

