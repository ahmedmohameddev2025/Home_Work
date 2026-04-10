import 'package:flutter/material.dart';

class WeightAgeItem extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onAdd, onRemove;

  const WeightAgeItem({
    super.key,
    required this.label,
    required this.value,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Color(0xFF8D8E98),
                fontSize: 18,
              ),
            ),
            Text(
              '$value',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // زر الناقص
                CustomRoundButton(
                  icon: Icons.remove,
                  onPressed: onRemove,
                ),
                const SizedBox(width: 15),
                // زر الزائد
                CustomRoundButton(
                  icon: Icons.add,
                  onPressed: onAdd,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class CustomRoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomRoundButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E), 
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
