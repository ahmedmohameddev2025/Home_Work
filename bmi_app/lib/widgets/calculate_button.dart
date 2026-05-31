import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/data/bmi_data.dart';
import 'package:flutter_session12_exercises/screens/result_screen.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
        ),
        onPressed: () {
          double bmi = BmiData.weight / pow(BmiData.height / 100, 2);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ResultScreen(bmi: bmi)),
          );
        },
        child: Text('Calculate', style: AppStyles.buttonText),
      ),
    );
  }
}
