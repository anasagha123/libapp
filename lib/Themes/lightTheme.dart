import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    color: Color.fromARGB(255, 38, 9, 118),
    elevation: 5,
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 72, 31, 221)),
      elevation: MaterialStatePropertyAll(5),
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
);