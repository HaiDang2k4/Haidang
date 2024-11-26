import 'package:ex1/constants/app_colors.dart';
import 'package:ex1/screens/home/widgets/home_app_bar.dart';
import 'package:ex1/screens/home/widgets/progress.dart';
import 'package:flutter/material.dart';
import 'widgets/header.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hex020206,


      body: const Column(
        children: [
          Header(title: 'Progress'),
          Progress(),
          Header(title: "Today's Task"),
          HomeAppBar(colors: Colors.pinkAccent, title: 'Mobile App Research', choose: true, date: '4 Oct'),
          HomeAppBar(colors: Colors.cyan, title: 'Prepare Wireframe for Main Flow', choose: true, date: '4 Oct'),
          HomeAppBar(colors: Colors.purple, title: 'Prepare Screens', choose: false, date: '4 Oct'),
          Header(title: 'Tomorrow Task')
        ],
      ),
    );
  }
  }






