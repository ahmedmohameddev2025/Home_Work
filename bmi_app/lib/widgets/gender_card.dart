import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  const GenderCard({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 190.h,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : AppColors.card,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.white, size: 80.sp),
          SizedBox(height: 15.h),
          Text(title, style: AppStyles.genderText),
        ],
      ),
    );
  }
}
