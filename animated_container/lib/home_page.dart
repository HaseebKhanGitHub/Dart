

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 Widget build (BuildContext context){
   return Scaffold(
     appBar: AppBar(title: Center(child: Text('Home'),),
     ),
     body: Container(
       color: Colors.blue,
       child: Center(
         child: Icon(Icons.home, color: Colors.white , size: 200,),
       ),
     ),
   );
 }


}