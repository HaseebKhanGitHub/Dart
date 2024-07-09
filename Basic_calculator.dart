import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result  = " ";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Container(

        color: Colors.greenAccent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: no1Controller,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: no2Controller,
                  keyboardType: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1Controller.text.toString());
                        var no2= int.parse(no2Controller.text.toString());

                        var sum = no1+no2;

                        result = "The sum of $no1 and $no2 is $sum";

                        setState(() {

                        });
                      }, child: Text('Add')),
                      ElevatedButton(onPressed: (){}, child: Text('Sub')),
                      ElevatedButton(onPressed: (){}, child: Text('Mul')),
                      ElevatedButton(onPressed: (){}, child: Text('Div')),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                  child: Text(result, style: TextStyle(fontSize: 25, color: Colors.white),),)
              ],
            ),
          ),
        ),


      )
    );
  }
}
