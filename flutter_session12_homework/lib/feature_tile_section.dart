import 'package:flutter/material.dart';

class FeatureTileSection extends StatelessWidget {
  const FeatureTileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         FeatureTile(
                  icon: Icons.speed,
                  color: Colors.purple,
                  title: 'Fast Performance',
                  subtitle: 'Lightning fast app performance',
                ),
                 FeatureTile(
                  icon: Icons.security,
                  color: Colors.blue,
                  title: 'Secure',
                  subtitle: 'Your data is safe with us',
                ),
                 FeatureTile(
                  icon: Icons.palette,
                  color: Colors.orange,
                  title: 'Beautiful UI',
                  subtitle: 'Modern and clean design',
                ),
      ],
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;

  const FeatureTile({
    super.key,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 13)),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      ),
    );
  }
}
