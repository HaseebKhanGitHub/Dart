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

        title: Text("Scroll view "),
        backgroundColor: Colors.cyan,
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: SingleChildScrollView(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Container(
                         height: 200,
                         width: 200,
                         color: Colors.red,
                         margin: EdgeInsets.only(bottom: 11, right: 10),
                       ),
                       Container(
                         height: 200,
                         width: 200,
                         color: Colors.black,
                         margin: EdgeInsets.only(bottom: 11,right: 10),
                       ),
                       Container(
                         height: 200,
                         width: 200,
                         color: Colors.green,
                         margin: EdgeInsets.only(bottom: 11,right: 10),
                       ),
                       Container(
                         height: 200,
                         width: 200,
                         color: Colors.blue,
                         margin: EdgeInsets.only(bottom: 11,right: 10),
                       ),
                     ],
                   ),
                 ),
               ),
               Container(
                 height: 200,

                 color: Colors.green,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,

                 color: Colors.black,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,

                 color: Colors.blue,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,

                 color: Colors.red,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,
                 width: 200,
                 color: Colors.green,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,
                 width: 200,
                 color: Colors.black,
                 margin: EdgeInsets.only(bottom: 11),
               ),
               Container(
                 height: 200,
                 width: 200,
                 color: Colors.blue,
                 margin: EdgeInsets.only(bottom: 11),
               )
             ],
           ),
         ),
       ),
    );
  }
}
