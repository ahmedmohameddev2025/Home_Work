import 'package:chat_bot/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chatbot());
}

class Chatbot extends StatelessWidget {
  const Chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
