import 'package:ex1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  MaterialApp build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do List',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}





