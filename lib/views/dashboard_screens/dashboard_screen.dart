import 'package:defender/consts/colors.dart';
import 'package:defender/consts/images.dart';
import 'package:defender/consts/strings.dart';
import 'package:defender/consts/styles.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(bgimg), fit: BoxFit.cover)),
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Column(
              children: const [
                Text(
                  appname,
                  style: TextStyle(
                      color: white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          margin:const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: green,
                            boxShadow: [
                              BoxShadow(
                                color: gblue,
                                blurRadius: 5.0,
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  5.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          )),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children:  const [
                           Text(
                            ramGB,
                            style: TextStyle(fontSize: 20, color: white, fontFamily:bold),
                          ),
                          Text(
                            fram,
                            style: TextStyle(fontSize: 15, color: gblue, fontFamily:regular),
                          ),
                        ],

                      ),
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          margin:const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: orange,
                            boxShadow: [
                              BoxShadow(
                                color: gblue,
                                blurRadius: 5.0,
                                offset: Offset(
                                  0.0, // Move to right 5  horizontally
                                  5.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                           Text(
                            memoryGB,
                            style: TextStyle(fontSize: 20, color: white, fontFamily:bold),
                          ),
                          Text(
                            fmemory,
                            style: TextStyle(fontSize: 15, color: gblue, fontFamily:regular),
                          ),
                        ],

                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
