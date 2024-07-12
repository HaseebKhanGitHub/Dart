import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:switching_screens/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.bold
               ),
            ),
            SizedBox(
                height: 11,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> MyHomePage(title: 'nn',))
              );
            }, child: Text('Next'), )
          ],
        ),
      ),
    );
  }

}