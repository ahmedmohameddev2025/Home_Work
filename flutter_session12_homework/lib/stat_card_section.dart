import 'package:flutter/material.dart';

class StatCardSection extends StatelessWidget {
  const StatCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        StatCard(icon: Icons.people, value: '1,234', label: 'Users', iconColor: Colors.deepPurple),
        StatCard(icon: Icons.star, value: '4.8', label: 'Rating', iconColor: Colors.orange),
        StatCard(icon: Icons.trending_up, value: '98%', label: 'Success', iconColor: Color(0xFF3792C4)),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color iconColor;

  const StatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor, size: 24),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
