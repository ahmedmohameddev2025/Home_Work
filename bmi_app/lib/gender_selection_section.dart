import 'package:flutter/material.dart';
import 'package:flutter_session12_exercises/main.dart';

import 'gender_item.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key});

  @override
  State<GenderSelectionSection> createState() => _GenderSelectionSectionState();
}

class _GenderSelectionSectionState extends State<GenderSelectionSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => BmiModel.gender = 'male'),
              child: GenderItem(
                icon: Icons.male,
                label: 'MALE',
                isSelected: BmiModel.gender == 'male',
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => BmiModel.gender = 'female'),
              child: GenderItem(
                icon: Icons.female,
                label: 'FEMALE',
                isSelected: BmiModel.gender == 'female',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
