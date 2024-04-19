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

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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

        title: Text('Dashboard'),
        backgroundColor: Colors.blue.shade600,

      ),
      /*body: Padding(
        padding: const EdgeInsets.all(11),
        child: Text('Hello World!', style: TextStyle(fontSize: 25),),
      ),*/

      body: Container(
        color: Colors.cyan,
          margin: EdgeInsets.all(11), //margin does outside spacing
          child: Padding(
              padding: EdgeInsets.all(14), //inside spacing
              child: Text('Hello World', style: TextStyle(fontSize: 25, color: Colors.black),)
          )

      ),
    );
  }
}
