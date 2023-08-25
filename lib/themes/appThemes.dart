import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Color.fromARGB(255, 16, 0, 85);
  static const Color secundary = Color.fromARGB(255, 0, 12, 66);
  static final ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: Colors.greenAccent,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
  textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: Color.fromARGB(255, 62, 47, 145)),
    floatingLabelStyle: TextStyle(
      color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
        topRight: Radius.circular(200))
        
      )
    )
  );
}