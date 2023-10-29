import 'package:flutter/material.dart';

var DarkTheme = ThemeData(
  primaryColor: Color.fromARGB(150, 12, 4, 58),
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
  scaffoldBackgroundColor: Color.fromARGB(255, 9, 3, 45),
  iconTheme: IconThemeData(
    color: Color.fromARGB(255, 72, 31, 221),
  ),
);