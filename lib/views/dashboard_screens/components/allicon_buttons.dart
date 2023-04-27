import 'package:defender/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../consts/images.dart';

class Allicons extends StatelessWidget {
  const Allicons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
                
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                crossAxisCount: 3,
                children: [
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(junkfilesImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(cooler3dImg, fit: BoxFit.cover, ),
                    onPressed: () => '', color: Colors.amber,)
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(boostImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(antivirusImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(battery3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:
                    Image.asset(settingImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                  Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(
                      icon:
                    Image.asset(key3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                   Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(data3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                  ),
                   Container(
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    
                    child: IconButton(icon:Image.asset(accessibilityImg, fit: BoxFit.cover,),
                    onPressed: () => '',)
                  ),
                ],
              );
  }
}