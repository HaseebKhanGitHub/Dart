import 'package:animated_container/SplashScreen.dart';
import 'package:animated_container/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var uNameController = TextEditingController();

  var passController = TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Login')),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Icon(
                    Icons.account_circle, size: 100, color: Colors.indigo,
                ),
              ) ,
              SizedBox(
                width: 300,
                child: TextField(
                  controller: uNameController,
                  decoration: InputDecoration(
                    label: Text('Email'),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                ),
              ),

              SizedBox(
                height: 11,
              ),

              SizedBox(
                width: 300,
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 11,
              ),

              ElevatedButton(onPressed: () async {

                //if successfully loggedin (creds are crrect)
                var sharedPref = await SharedPreferences.getInstance();
                sharedPref.setBool(SplashScreenState.KEYLOGIN, true);

                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=> HomePage()));

              }, child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200, // Background color
                ))

            ],
          ),
        ),
      ),
    );
  }


}