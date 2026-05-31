import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_session12_exercises/data/bmi_data.dart';
import 'value_card.dart';

class WeightAgeSection extends StatefulWidget {
  const WeightAgeSection({super.key});

  @override
  State<WeightAgeSection> createState() => _WeightAgeSectionState();
}

class _WeightAgeSectionState extends State<WeightAgeSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ValueCard(
            title: 'WEIGHT',
            value: BmiData.weight,
            onAdd: () {
              setState(() {
                BmiData.weight++;
              });
            },
            onRemove: () {
              setState(() {
                BmiData.weight--;
              });
            },
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: ValueCard(
            title: 'AGE',
            value: BmiData.age,
            onAdd: () {
              setState(() {
                BmiData.age++;
              });
            },
            onRemove: () {
              setState(() {
                BmiData.age--;
              });
            },
          ),
        ),
      ],
    );
  }
}
