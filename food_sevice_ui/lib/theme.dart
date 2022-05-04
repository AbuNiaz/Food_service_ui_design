import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.teal,
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      centerTitle: true,
    ),
    bottomAppBarColor: Colors.teal,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.teal,
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), gapPadding: 4),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.blue),
          gapPadding: 4,
        ),
        focusColor: Colors.blue),
  );
}
