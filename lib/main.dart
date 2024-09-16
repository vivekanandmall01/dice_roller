import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: const [
          Color.fromARGB(255, 97, 129, 190),
          Color.fromARGB(255, 4, 21, 117)
        ],
      ),
    ),
  ));
}
