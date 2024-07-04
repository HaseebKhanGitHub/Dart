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
        title: Text("Flutter Rich Text"),
        backgroundColor: Colors.blue,
      ),

     /* body: Row(
        children: [
          Text('Hello  ', style: TextStyle(fontSize: 16, color: Colors.red),),
          Text('World', style: TextStyle(fontSize: 34, color: Colors.lightBlue, fontWeight: FontWeight.bold),)
        ],
      ) ,*/

       body: RichText(
         text: TextSpan(//default
             style: TextStyle(
                 color: Colors.blue,fontSize: 18
             ),
           children: <TextSpan>[
             TextSpan(
               text: 'Hello  ',
             ),
             TextSpan(
               text: 'World!',style: TextStyle(
               color: Colors.red, fontSize: 33,fontWeight: FontWeight.bold
             ),
             ),
             TextSpan(
               text: '       Welcome to '
             ),
             TextSpan(
               text: 'Flutter', style: TextStyle(
               color: Colors.teal, fontSize: 33, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic
             )
             )
           ]
         ),
       ),
    );
  }
}

