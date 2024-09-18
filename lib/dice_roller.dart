import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = "assets/images/dice-6.png";

  void pressedButton() {
    var raNumber = randomizer.nextInt(6) + 1;
    AudioPlayer().play(AssetSource('audio/dice.mp3'));
    setState(() {
      diceImage = "assets/images/dice-$raNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        // const Padding(padding: EdgeInsets.only(top: 20)),
        TextButton(
            onPressed: pressedButton,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
