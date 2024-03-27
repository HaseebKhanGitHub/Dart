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
      theme: ThemeData(),
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
        title: const Text("Inkwell", selectionColor: Colors.white),
        backgroundColor: Colors.redAccent,
      ),

      /*body: Container(
         child: ElevatedButton(
           child: Text("Click me"),
           onPressed: (){
             print("pressed on button");
           },
         ),
       )*/

      body: Center(
        child: InkWell(
          onTap: () {
            print("On tap pressed");
          },
          onLongPress: () {
            print("Long pressed");
          },
          onDoubleTap: () {
            print("Double Tapped");
          },
          child: Container(
              width: 200,
              height: 200,
              color: Colors.brown,
              child: Center(
                child: InkWell(
                  onTap: (){
                    print("Text tapped successfully");
                  },
                    child: (Text(
                  "Click me",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                ))),
              )),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
