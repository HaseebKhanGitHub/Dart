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
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Stack Widget'),
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            /*Container(
              width: 200,
              height: 200,
              color: Colors.black38,
            ),*/


            Positioned(
              left: 21,
              top: 21,

              child: Container(
                width: 200,
                height: 200,
                color: Colors.greenAccent,
              ),
            ),


            Positioned(
              left: 10,
              top: 10,

              child: Container(
                width: 200,
                height: 200,
                color: Colors.pinkAccent,
              ),
            )
          ],
        ),
      )
    );
  }
}
