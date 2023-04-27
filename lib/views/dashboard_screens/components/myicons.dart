import 'package:defender/consts/strings.dart';
import 'package:defender/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../consts/colors.dart';
import '../../../consts/images.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      children: [
        Column(
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(junkfilesImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(junk, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
         
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(cooler3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(cooler, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(boostImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(boost, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(antivirusImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(antivirus, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(battery3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(saving, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
       
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(settingImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(settings, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
              height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(key3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(antivirus, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(data3dImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(saving, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
        Column(
          
          children: [
            Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                    color: lblue,
                    
                    borderRadius: BorderRadiusDirectional.circular(30)),
                    // color: Colors.amber,
                    child: IconButton(icon:Image.asset(accessibilityImg, fit: BoxFit.cover,),
                    onPressed: () => '')
                    
                  ),
            const Text(settings, style: TextStyle(fontFamily: semibold, fontSize: 15),),
          ],
        ),
      ],);
  }
}