import 'package:chat_bot/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.splashImage,
      width: 262,
      height: 262,
    );
  }
}
