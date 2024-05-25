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
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        title: Text("Flutter TextField"),
        backgroundColor: Colors.green,

      ),
      body: Center(child: Container(
        width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.phone,

                controller: emailText,
                //    enabled: false,
                decoration: InputDecoration(
                  hintText: '  Enter Phone Number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 2

                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 2

                        )

                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2

                        )
                    ),
                  //  suffixText: "Username Exist",
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),
                      onPressed: (){

                      },
                    ),
                    prefix: Icon(Icons.phone, color: Colors.blue,)


                ),


              ),
              Container(height: 10,),
              TextField(
                //hide text
                  obscureText: true,
                  obscuringCharacter: '+',
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)

                      )
                  )
              ),
              ElevatedButton(onPressed: (){
                String uMail= emailText.text.toString();
                String uPass = password.text;
                
                print("Email: $uMail, Password: $uPass");
              },
                  child: Text(
                    'login'
                  ))

            ],
          )
        )
      ),
    );
  }
}
