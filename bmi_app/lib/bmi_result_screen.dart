import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03051A),
      appBar: AppBar(backgroundColor: Colors.transparent, title: const Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),)),
      body: Center(
        child: Text(
          'BMI: ${bmi.toStringAsFixed(1)}',
          style: const TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
