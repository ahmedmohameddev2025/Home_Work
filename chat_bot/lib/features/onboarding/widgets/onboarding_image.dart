import 'package:chat_bot/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 27,
      ),
      child: Image.asset(
        Assets.onboardingFrame,
      ),
    );
  }
}
