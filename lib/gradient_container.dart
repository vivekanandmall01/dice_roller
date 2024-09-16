import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAlignment, end: endAlignment)),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
