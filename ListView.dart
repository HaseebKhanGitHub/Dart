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


    var arrNames=['Raman','Ali', 'Shahid','Anwar','Ante','James','john'];

    return Scaffold(
      appBar: AppBar(

        title: Text("List View"),
        backgroundColor: Colors.pink,
      ),
      /*body: Center(
        child: ListView(
          scrollDirection: Axis.vertical ,
          reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("One",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Two",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Three",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Four",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Fivee",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),*/

      body: ListView.separated(itemBuilder: (context, index) {
        return Text(arrNames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),);

      },
        itemCount: arrNames.length,
        separatorBuilder: (context, index){
        return Divider(height: 40,thickness: 5,);
        },
      ),
    );
  }
}
