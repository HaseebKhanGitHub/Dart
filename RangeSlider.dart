import 'package:flutter/material.dart';
import 'package:switching_screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
      RangeValues values1 = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels Labels = RangeLabels(
        values1.start.toString(),
        values1.end.toString());


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Switching Screens'),
      ),
      body: RangeSlider(
        values: values1,
        divisions: 10,
        labels: Labels,
        min: 0,
        max: 100,

        onChanged: (newValues) {
          values1 = newValues;
          setState(() {

          });
        },

      )
    );
  }
}

/*


RangeSlider(
values: values,
labels: Labels,
divisions: 10,
activeColor: Colors.pink,
inactiveColor: Colors.indigo,
max: 100, min: 0,
onChanged: (newValues){
values= newValues;
print('${newValues.start}, ${newValues.end}');
setState((){

});
}


),*/
