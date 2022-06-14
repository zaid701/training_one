// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';

class changabltheme {
  ThemeData tb = custheme();
  void settheme(ThemeData td) {
    this.tb = td;
  }

  ThemeData gettheme() => tb;
}

ThemeData custheme() {
  ThemeData lighttheme = ThemeData.light();
  return lighttheme.copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
          alignment: Alignment.center,
          elevation: MaterialStateProperty.all(10),
        ),
      ),
      textTheme: TextTheme(button: TextStyle(fontWeight: FontWeight.bold)),
      appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey));
}

ThemeData custheme2() {
  ThemeData lighttheme = ThemeData.light();
  return lighttheme.copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          alignment: Alignment.center,
          elevation: MaterialStateProperty.all(10),
        ),
      ),
      textTheme: TextTheme(button: TextStyle(fontWeight: FontWeight.bold)),
      appBarTheme: AppBarTheme(backgroundColor: Colors.red));
}
