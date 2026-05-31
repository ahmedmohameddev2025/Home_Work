import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';
import 'custom_round_button.dart';

class ValueCard extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  const ValueCard({
    super.key,
    required this.title,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          Text(title, style: AppStyles.sectionTitle),
          SizedBox(height: 5.h),
          Text('$value', style: AppStyles.bigNumber),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRoundButton(icon: Icons.remove, onTap: onRemove),
              SizedBox(width: 15.w),
              CustomRoundButton(icon: Icons.add, onTap: onAdd),
            ],
          ),
        ],
      ),
    );
  }
}
