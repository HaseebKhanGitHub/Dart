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
      theme: ThemeData(),
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
          title: Text('Circular Avatar'),
          backgroundColor: Colors.blue.shade600,
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            child: CircleAvatar(
              child: Text('Flutter',style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),),
            backgroundImage: AssetImage ('assets/images/images.png'),
            backgroundColor: Colors.black,

            ),
          ),
        ),

    );
  }
}
