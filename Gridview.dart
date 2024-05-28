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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  var arrColors = [Colors.greenAccent, Colors.blue, Colors.red, Colors.green,
    Colors.purple,Colors.black,Colors.cyan,Colors.pink];
    return Scaffold(
      appBar: AppBar(


        title: Text("Flutter Date Picker"),
        backgroundColor: Colors.green,

      ),
      body: Column(
        children: [
          /*Container(
            height: 200,//column numbers
            child: GridView.count(crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(color: arrColors[0]),
              Container(color: arrColors[1]),
              Container(color: arrColors[2]),
              Container(color: arrColors[3]),
              Container(color: arrColors[4]),
              Container(color: arrColors[5]),
              Container(color: arrColors[6]),
              Container(color: arrColors[7]),
              ],
                ),
          ),
          Container(
            height: 100,
          ),*/

          Container(
            height: 200,
            child: GridView.extent(maxCrossAxisExtent: 50,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(color: arrColors[0]),
              Container(color: arrColors[1]),
              Container(color: arrColors[2]),
              Container(color: arrColors[3]),
              Container(color: arrColors[4]),
              Container(color: arrColors[5]),
              Container(color: arrColors[6]),
              Container(color: arrColors[7]),
            ],),
          )
        ],
      ),



    );
  }
}
