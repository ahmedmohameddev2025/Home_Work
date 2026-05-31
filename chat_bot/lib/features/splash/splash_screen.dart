import 'dart:async';
import 'package:chat_bot/features/onboarding/onboarding_screen.dart';
import 'package:chat_bot/core/utils/app_colors.dart';
import 'package:chat_bot/features/splash/widgets/splash_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(child: SplashLogo()),
    );
  }

  void navigateToOnboarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }
}
