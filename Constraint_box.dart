import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constraint Box'),
        backgroundColor: Colors.blue,
      ),
      body: ConstrainedBox(constraints:
      BoxConstraints(
        maxWidth: 200,
        maxHeight: 100,
      ),
      child: Text('Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello WorldHello World vHello World',
        style: TextStyle(fontSize: 21, overflow: TextOverflow.clip),))
    );
  }
}
