import 'package:defender/consts/colors.dart';
import 'package:defender/consts/images.dart';
import 'package:defender/views/dashboard_screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavigation extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  
  const BottomNavigation({super.key,required this.currentIndex, required this.onTap});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      backgroundColor: lblue,
      
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(profileImg),
          label: "lock"),
          
          BottomNavigationBarItem(
          icon: Image.asset(profileImg),
          label: "lock"),

      ]);
  }
}