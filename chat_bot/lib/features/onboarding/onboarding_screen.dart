import 'package:chat_bot/features/onboarding/widgets/continue_button.dart';
import 'package:chat_bot/features/onboarding/widgets/onboarding_header.dart';
import 'package:chat_bot/features/onboarding/widgets/onboarding_image.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const OnboardingHeader(),
            const SizedBox(height: 84),
            const OnboardingImage(),
            const SizedBox(height: 130),
            const ContinueButton(),
          ],
        ),
      ),
    );
  }
}
