import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';

class CustomRoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const CustomRoundButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.w,
        width: 50.w,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: AppColors.white, size: 25.sp),
      ),
    );
  }
}
