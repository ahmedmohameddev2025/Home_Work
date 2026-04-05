import 'package:flutter/material.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionButton(label: 'Settings', color: const Color(0xFF2196F3), onPressed: () {}),
        const SizedBox(width: 16),

        ActionButton(label: 'Profile', color: const Color(0xFFFF9800), onPressed: () {}),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const ActionButton({super.key, required this.label, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
