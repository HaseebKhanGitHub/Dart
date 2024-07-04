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
        title: Text("Flutter Sized Box"),
        backgroundColor: Colors.blue,
      ),

      /* body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 30,
          maxHeight: 180,//no effect

          minWidth: 80,
          maxWidth: 600,//no effect
        ),
        child: SizedBox.shrink(

          child: ElevatedButton(
            onPressed: (){

            },
            child: Text('Click'),
          ),
        ),
      )*/
      
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 150,

            child: ElevatedButton(
              onPressed: (){

              }, child: Text('Click'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: Colors.green,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          SizedBox.square(
            dimension: 150,

            child: ElevatedButton(
              onPressed: (){

              }, child: Text('Click'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: Colors.green,
              ),
            ),
          ),

        ]
      ),
    );
  }
}

