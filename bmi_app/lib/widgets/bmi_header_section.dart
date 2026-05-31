import 'package:flutter/material.dart';
import 'package:flutter_session12_exercises/utils/app_styles.dart';

class BmiHeaderSection extends StatelessWidget {
  const BmiHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text('BMI Calculator', style: AppStyles.appBarTitle),
    );
  }
}
