import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:defender/consts/colors.dart';
import 'package:defender/consts/images.dart';
import 'package:defender/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BoostButton extends StatefulWidget {
  const BoostButton({super.key});

  @override
  State<BoostButton> createState() => _BoostButtonState();
}

class _BoostButtonState extends State<BoostButton> with TickerProviderStateMixin {
  //  bool _isBoosted = false;
// CountDownController _controller = CountDownController();
// bool _isPause = false;
  late Timer _timer;
  double _value = 0;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

    void _startTimer() {
    if (mounted) {
      _timer = Timer.periodic(const Duration(milliseconds: 60), (Timer timer) {
        _incrementPointerValue();
      });
    }
  }

    void _incrementPointerValue() {
    setState(
      () {
        if (_value == 100) {
          _timer.cancel();
          Future<dynamic>.delayed(const Duration(milliseconds: 6000));
          _startTimer();
        } else {
          _value++;
        }
      },
    );
  }

   @override
  Widget build(BuildContext context) {
    return Stack(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Transform.scale(
              scale: 1.2,
              child: boostbutton(),
            ),
          ),
        ),
      ],
    );
  }
  _Boostbutton boostbutton() => const _Boostbutton();
  }

  _Boostbutton Boostbutton() => const _Boostbutton();

  class _Boostbutton extends StatefulWidget {
  const _Boostbutton({
    Key? key,
  }) : super(key: key);

  @override
  State<_Boostbutton> createState() => _BoostbuttonState();
}

class _BoostbuttonState extends State<_Boostbutton>
    with TickerProviderStateMixin {
  // CountDownController _controller = CountDownController();
  // bool _isPause = false;
  late Timer _timer;
  double _value = 0;
  int _state = 0;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  //new

    void _startTimer() {
    if (mounted) {
      _timer = Timer.periodic(const Duration(milliseconds: 60), (Timer timer) {
        _incrementPointerValue();
      });
    }
  }

  void _incrementPointerValue() {
    setState(
      () {
        if (_value == 100) {
          _timer.cancel();
          Future<dynamic>.delayed(const Duration(milliseconds: 6000));
          _startTimer();
        } else {
          _value++;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: unnecessary_new
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: unnecessary_new
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: setUpButtonChild(),
              onPressed: () {
                setState(() {
                  if (_state == 0) {
                    animateButton();
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }

  Widget setUpButtonChild() {
    if (_state == 0) {
      return Padding(
        padding: const EdgeInsets.only(top: 5),
        child: SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(optimizationImg)),
      );
    } else if (_state == 1) {
      return const SizedBox(
        height: 100,
        width: 100,
        // color: Color.fromARGB(200, 154, 197, 162),
        child: CircularProgressIndicator(
          strokeWidth: 10,
          valueColor: AlwaysStoppedAnimation<Color>(
            Color.fromARGB(255, 140, 112, 190),
          ),
        ),
      );
    } else {
      return Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Icon(
              Icons.check_circle_outlined,
              color: lgreen,
              size: 100,
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(top: 5),
          //   child: Text(
          //     'Optimized',
          //     style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black),
          //   ),
          // )
        ],
      );
    }
  }

  void animateButton() {
    setState(() {
      _state = 1;
    });

    Timer(const Duration(milliseconds: 3300), () {
      setState(() {
        _state = 2;
      });
    });
  }
}
