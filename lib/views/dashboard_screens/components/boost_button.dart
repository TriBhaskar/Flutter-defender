import 'package:defender/consts/colors.dart';
import 'package:defender/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BoostButton extends StatefulWidget {
  const BoostButton({super.key});

  @override
  State<BoostButton> createState() => _BoostButtonState();
}

class _BoostButtonState extends State<BoostButton> {
   bool _isBoosted = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      onTap: (){
        setState(() {
          _isBoosted = !_isBoosted;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(microseconds: 400),
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          color: _isBoosted ? orange : lblue,
          borderRadius: BorderRadius.circular(100)
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.flash_on,
              color: Colors.white,
              size: 30,
            ),
            
            Text(
              'BOOST',
              style: TextStyle(
                color: Colors.white,
                fontFamily: bold,
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}