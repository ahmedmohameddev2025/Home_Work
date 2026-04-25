import 'package:flutter/material.dart';
import 'package:flutter_session12_exercises/custom_app_bar.dart';
import 'package:flutter_session12_exercises/custom_button.dart';
import 'package:flutter_session12_exercises/gender_selection_section.dart';
import 'package:flutter_session12_exercises/hight_selection_section.dart';
import 'package:flutter_session12_exercises/weight_age_selection_section.dart';

class BmiModel {
  static String gender = 'male';
  static int height = 174;
  static int weight = 60;
  static int age = 29;
}

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: BmiCalculator()),
  );
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03051A),

      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        CustomAppBar(),
                        SizedBox(height: 30),
                        GenderSelectionSection(),
                        SizedBox(height: 40),
                        HightSelectionSection(),
                        SizedBox(height: 50),
                        WeightAgeSelectionSection(),
                      ],
                    ),
                  ),
                ),
                const CustomButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
