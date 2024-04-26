import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorSchemeSeed: MaterialStateColor.resolveWith(
    (states) => const Color(0xff3c9380),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Color(0xff3c9380),
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
    backgroundColor: MaterialStateColor.resolveWith(
      (states) => const Color(0xff3c9380),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    actionsIconTheme: IconThemeData(color: Colors.white),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: MaterialStateColor.resolveWith(
      (states) => const Color(0xff40968c),
    ),
  ),
);
