import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/data/bmi_data.dart';
import 'gender_card.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                BmiData.gender = 'male';
              });
            },
            child: GenderCard(
              icon: Icons.male,
              title: 'MALE',
              isSelected: BmiData.gender == 'male',
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                BmiData.gender = 'female';
              });
            },
            child: GenderCard(
              icon: Icons.female,
              title: 'FEMALE',
              isSelected: BmiData.gender == 'female',
            ),
          ),
        ),
      ],
    );
  }
}
