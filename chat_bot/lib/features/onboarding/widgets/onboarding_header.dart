import 'package:chat_bot/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Your AI Assistant',
          style: AppTextStyles.heading1,
        ),
        SizedBox(height: 14),
        Text(
          'Using this software,you can ask your\nquestions and receive articles using\nartificial intelligence assistant',
          textAlign: TextAlign.center,
          style: AppTextStyles.heading2,
        ),
      ],
    );
  }
}
