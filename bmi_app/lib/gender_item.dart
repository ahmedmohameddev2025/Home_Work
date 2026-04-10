import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const GenderItem({super.key, required this.icon, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF1D1E33) : const Color(0xFF111328),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: Colors.white),
            Text(label, style: const TextStyle(color: Color(0xFF8D8E98), fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
