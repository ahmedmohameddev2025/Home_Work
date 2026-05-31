import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  const ResultScreen({super.key, required this.bmi});

  String getBmiStatus() {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 25) {
      return 'Normal';
    } else if (bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.white),
        title: Text('BMI Result', style: AppStyles.appBarTitle),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.w),
          padding: EdgeInsets.all(30.w),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('BMI: ${bmi.toStringAsFixed(1)}', style: AppStyles.resultText),
              SizedBox(height: 15.h),
              Text(getBmiStatus(), style: AppStyles.genderText),
            ],
          ),
        ),
      ),
    );
  }
}
