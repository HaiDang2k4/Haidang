import 'package:ex/screens/home/Create_Task_Screens.dart';
import 'package:ex/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do List',
      home: CreateTaskScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
