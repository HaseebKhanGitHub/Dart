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

    return Scaffold(
      appBar: AppBar(


        title: Text("Flutter Date Picker"),
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text(
                'Select Any Date',
            style: TextStyle(fontSize: 25),
            ),


            ElevatedButton(onPressed: () async {
              DateTime?  datePicked = await showDatePicker(
                  context: context,
                  // initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2023)
              );
              if(datePicked!=null){
                print('Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
              }
            }, child: Text('Select Date'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
            ),
            ),


            ElevatedButton(onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.input
              );
              if(pickedTime!=null){
                print('Time Selected: ${pickedTime.hour}:${pickedTime.minute}');
              }
            }, child: Text('select time'))
          ],
        ),
      ),

    );
  }
}
