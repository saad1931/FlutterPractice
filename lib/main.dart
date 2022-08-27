import 'package:flutter/material.dart';
import 'package:flutter_challenge/screens/home.dart';
import 'package:flutter_challenge/screens/login.dart';
import 'package:flutter_challenge/utils/routes.dart';
import 'package:flutter_challenge/widgets/MyThemes.dart';

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
      theme: MyThemes.lighttheme(context),
      
      // For dark theme
      darkTheme: MyThemes.darktheme(context),

      
      // initialRoute (app will start from initialRoute)
      initialRoute: "/Home",
      
      // Routes
      routes: {
        
        MyRoutes.HomeRoute:(context)=>Home(),
        MyRoutes.LoginRoute:(context)=>Login(),
      },

    );
  }
}