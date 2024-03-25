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
        primarySwatch: Colors.blue,
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

        title: Text('Flutter Container'),
        backgroundColor: Colors.blue,

      ),
      /*body: Center(
        child: Container(
          width:200,
          height: 200,
          color: Colors.purple,
          child: Text("Hello World! i'm here"),
        ) ,
      )
*/


      /*body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.purple,
          child: Center(child: Text('This is center of Container',style: TextStyle(color: Colors.greenAccent),)),
        ),
      ),
*/



     /*body: TextButton(
       child: Text("Click me!"),
       onPressed: (){
         print('Text Buttons Tapped');
       },
       onLongPress: (){
         print('Long Pressed');
       },
     ),*/




      /*body: ElevatedButton(
        child: Text('Elevated Button'),
        onPressed: (){
          print('Button Pressed');
        },
      ),*/



      body: OutlinedButton(
        child:  Text("Outlined Button"),
        onPressed: (){
          print('Outlined B tapped');
        },
      ),
    );
  }
}
