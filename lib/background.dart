import 'package:flutter/material.dart';
import 'package:diceroll/dice_roller.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1E1E2E),
      ),

      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}