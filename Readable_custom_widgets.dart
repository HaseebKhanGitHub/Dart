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
        title: Text("Flutter Custom Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            CatItems(), Contact(), SubCatItems(), BottomMenu()],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.indigo,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(11.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.black,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.yellow,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              title: Text('Name'),
              subtitle: Text('Mob No'),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.cyan,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11), color: Colors.black),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.greenAccent,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
