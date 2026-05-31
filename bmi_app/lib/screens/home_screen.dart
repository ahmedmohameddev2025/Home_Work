import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/widgets/bmi_header_section.dart';
import 'package:flutter_session12_exercises/widgets/calculate_button.dart';
import 'package:flutter_session12_exercises/widgets/gender_section.dart';
import 'package:flutter_session12_exercises/widgets/height_section.dart';
import 'package:flutter_session12_exercises/widgets/weight_age_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BmiHeaderSection(),
                SizedBox(height: 30.h),
                const GenderSection(),
                SizedBox(height: 25.h),
                const HeightSection(),
                SizedBox(height: 25.h),
                const WeightAgeSection(),
                SizedBox(height: 25.h),
                const CalculateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
