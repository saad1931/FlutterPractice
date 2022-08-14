import 'package:flutter/material.dart';
import 'package:flutter_challenge/screens/home.dart';
import 'package:flutter_challenge/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(), //if we use routes then no use of it 
      // For light theme
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      
      // For dark theme
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark
      // ),

      // initialRoute (app will start from initialRoute)
      initialRoute: "/Login",
      
      // Routes
      routes: {
        "/":(context)=>Home(),
        "/Home":(context)=>Home(),
        "/Login":(context)=>Login(),
      },

    );
  }
}