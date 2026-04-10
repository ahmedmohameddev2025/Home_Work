import 'package:flutter/material.dart';

import '../main.dart';
import 'weight_age_item.dart';

class WeightAgeSelectionSection extends StatefulWidget {
  const WeightAgeSelectionSection({super.key});

  @override
  State<WeightAgeSelectionSection> createState() =>
      _WeightAgeSelectionSectionState();
}

class _WeightAgeSelectionSectionState extends State<WeightAgeSelectionSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: WeightAgeItem(
              label: 'WEIGHT',
              value: BmiModel.weight,
              onAdd: () => setState(() => BmiModel.weight++),
              onRemove: () => setState(() => BmiModel.weight--),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: WeightAgeItem(
              label: 'AGE',
              value: BmiModel.age,
              onAdd: () => setState(() => BmiModel.age++),
              onRemove: () => setState(() => BmiModel.age--),
            ),
          ),
        ],
      ),
    );
  }
}
