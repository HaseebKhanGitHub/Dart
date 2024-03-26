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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text("Flutter Practice 2"),
        backgroundColor: Colors.green,

      ),
      /*body: Center(
        child: Container(
          width: 100,
          height: 100,
            child:Image.asset('assets/images/icon.png')
        ),
      )
*/



      body: Container(
        color: Colors.blue,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center ,
          children: [
            Text('A', style: TextStyle(fontSize: 25),),
            Text('B', style: TextStyle(fontSize: 25),),
            Text('C', style: TextStyle(fontSize: 25),),
            Text('D', style: TextStyle(fontSize: 25),),
            Text('E', style: TextStyle(fontSize: 25),),
          ],
        ),
      ),




    );
  }
}
