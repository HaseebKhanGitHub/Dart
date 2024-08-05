import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'ff'),
    );
  }
}

class MyHomePage extends StatefulWidget {


  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var nameController = TextEditingController();

  static const String KEYNAME = 'name';

  var nameValue = 'No Value Saved';
  @override
  void initState() {

    super.initState();

    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text('Shared Pref'),
      ),
      body: Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      TextField(
        controller: nameController,
      ),
    ElevatedButton(onPressed: () async {
      var prefs = await SharedPreferences.getInstance();

      prefs.setString(KEYNAME,  nameController.text.toString());

      getValue();
    }, child: Text('save')
    ),
    SizedBox(
      height: 11,
    ),
      Text(nameValue)
    ]
    ),
    ));
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);


    setState(() {
      nameValue = getName ?? 'No value Saved';
    });
  }
}