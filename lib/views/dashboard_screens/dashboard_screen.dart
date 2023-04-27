import 'package:defender/consts/colors.dart';
import 'package:defender/consts/images.dart';
import 'package:defender/consts/strings.dart';
import 'package:defender/consts/styles.dart';
import 'package:defender/views/dashboard_screens/components/allicon_buttons.dart';
import 'package:defender/views/dashboard_screens/components/boost_button.dart';
import 'package:defender/views/dashboard_screens/components/bottom_navigationbar.dart';
import 'package:defender/views/dashboard_screens/components/myicons.dart';
import 'package:defender/views/dashboard_screens/components/ram_memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: white,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.amber,
        child: BottomNavigation(
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      body: Container(
        // constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgImg), fit: BoxFit.cover,)),
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
             const Padding(
               padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
               child: Text(
                appname,
                style: TextStyle(
                    color: white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
                         ),
             ),
             Row(
               children: const [
                 Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RamMemory(),
            ),
               
               Padding(
                 padding: EdgeInsets.all(12.0),
                 child: BoostButton(),
               )],
             ),
            
             const Expanded(
              
              child: MyIcons(),
            )
          ],
        ),
        
      ),
    );
  }
}
