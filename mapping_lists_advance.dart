import 'dart:async';
import 'dart:ui';

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
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'ff'),
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
  var arrData =[
    {
      'name' : 'Raman',
      'mobno' : '27428429924',
      'unread' : '3'
    },
    {
      'name' : 'Zaman',
      'mobno' : '985739529',
      'unread' : '2'
    },
    {
      'name' : 'Mohit',
      'mobno' : '274284224820984',
      'unread' : '3'
    },
    {
      'name' : 'Fost',
      'mobno' : '27428429924',
      'unread' : '1'
    },
    {
      'name' : 'Ali',
      'mobno' : '27428429924',
      'unread' : '1'
    },
    {
      'name' : 'York',
      'mobno' : '87482472',
      'unread' : '3'
    }
  ];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Mapping Lists'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) => ListTile(
                leading: Icon(Icons.account_circle),
            title: Text(value['name'].toString()),
            subtitle: Text(value['mobno'].toString()),
            trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.lightGreen,
                child: Text(value['unread'].toString())),

            )
        ).toList()
      )
    )
    );
  }
}
