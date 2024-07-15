

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_screens/main.dart';

class IntroPage extends StatelessWidget{
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Welcome',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 33),),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController ,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=> MyHomePage(
                        nameFromIntro: nameController.text.toString())
                ));
          }, child: Text('Next'))
        ],
      ),
    );




  }


}