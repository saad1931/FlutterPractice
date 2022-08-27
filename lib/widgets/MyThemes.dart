import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ));

  static ThemeData darktheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark);
}
