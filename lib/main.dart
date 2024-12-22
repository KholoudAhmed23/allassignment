import 'package:flutter/material.dart';
import 'assignments/assignment1.dart';
import 'assignments/assignment2.dart';
import 'assignments/assignment3.dart';
import 'assignments/assignment4.dart';
import 'assignments/assignment5.dart';
import 'assignments/assignment6.dart';
import 'assignments/assignment7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: Assignment7(),
    );
  }
}
