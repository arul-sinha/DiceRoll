import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-2.png';
  final random = Random();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (int i = 1; i <= 6; i++) {
      precacheImage(AssetImage('assets/images/dice-$i.png'), context);
    }
  }

  void rollDice() {
    int n = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$n.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 225,
          height: 225,
        ),

        SizedBox(height: 25),

        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 25),
            foregroundColor: const Color(0xFFcba6f7),
            textStyle: TextStyle(fontSize: 30)
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}