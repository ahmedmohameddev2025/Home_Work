import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle get appBarTitle => TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static TextStyle get sectionTitle =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500, color: AppColors.grey);

  static TextStyle get bigNumber => TextStyle(
    fontSize: 55.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.white,
  );

  static TextStyle get unit => TextStyle(fontSize: 18.sp, color: AppColors.grey);

  static TextStyle get buttonText => TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static TextStyle get genderText => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static TextStyle get resultText => TextStyle(
    fontSize: 45.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
