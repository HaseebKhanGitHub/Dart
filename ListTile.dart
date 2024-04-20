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
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
    var arrNames=['raman', 'raja','rani','rathore'];
    return Scaffold(
        appBar: AppBar(
          title: Text('List Tile'),
          backgroundColor: Colors.blue.shade600,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
           //   leading: Text('${index+1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add),

            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 20,
              thickness: 2,
            );
          },
        )
    );
  }
}
