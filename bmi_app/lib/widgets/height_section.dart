import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/data/bmi_data.dart';
import 'package:flutter_session12_exercises/utils/app_colors.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
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
          Text('HEIGHT', style: AppStyles.sectionTitle),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('${BmiData.height}', style: AppStyles.bigNumber),
              SizedBox(width: 5.w),
              Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Text('cm', style: AppStyles.unit),
              ),
            ],
          ),
          Slider(
            activeColor: AppColors.primary,
            inactiveColor: AppColors.grey,
            min: 100,
            max: 220,
            value: BmiData.height.toDouble(),
            onChanged: (value) {
              setState(() {
                BmiData.height = value.round();
              });
            },
          ),
        ],
      ),
    );
  }
}
