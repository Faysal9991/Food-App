import 'package:flutter/material.dart';
import 'package:food_app/screen/fast_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        hintColor: Colors.white,
        textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.white))
    ),
      home: LoginScreen(),
    );
  }
}