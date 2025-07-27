import 'package:flutter/material.dart';
import 'package:new2/ui_helper/util.dart';
import 'package:intl/intl.dart';


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
        textTheme: TextTheme(
         headlineLarge: TextStyle(fontSize: 39,color: Colors.blue),
            headlineMedium: TextStyle(fontSize: 21, color: Colors.black),
        ),
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
  var emailname = TextEditingController();
  var password = TextEditingController();
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {

       return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("ListView"),
      ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailname,
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                  hintText: "Enter your email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 3.0,

                    )

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.cyan

                    )
                  ),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                    onPressed: (){
                      
                    },
                  ),
                  prefixIcon: Icon(Icons.email_rounded)
                ),
              ),
              Container(height: 11,),
              TextField(
                controller: password,
                obscureText: true,
                obscuringCharacter: '*',

                decoration: InputDecoration(
                  hint: Text('Enter your password'),

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.pink
                        )

                    )
                ),

              ),
              ElevatedButton(onPressed: (){
                String uemail = emailname.text.toString();
                String upassword = password.text.toString();
                print("Email;$uemail, Password: $upassword");
                
              },
                  child:Text("Log In",style: TextStyle(fontSize: 20,color: Colors.pink),) ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    width: 300,
                    child: Text("Time is:${DateFormat('jms').format(time)}",style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  time = DateTime.now();
                });
              }, child: Text("Click me",style: TextStyle(fontSize: 20,color: Colors.purple),)),
                         


            ],
          ),
        ),
      ),




    );
  }


}
