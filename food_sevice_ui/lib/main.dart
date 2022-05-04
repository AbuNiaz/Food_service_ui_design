import 'package:flutter/material.dart';
import 'package:food_sevice_ui/Home_One/hamberger.dart';
import 'package:food_sevice_ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const Hamberger(),
    );
  }
}
