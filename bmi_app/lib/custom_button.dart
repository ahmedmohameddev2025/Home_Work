import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_session12_exercises/bmi_result_screen.dart';
import 'package:flutter_session12_exercises/main.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFEB1555),
          minimumSize: const Size(double.infinity, 70),
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          double bmi = BmiModel.weight / pow(BmiModel.height / 100, 2);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
          );
        },
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
