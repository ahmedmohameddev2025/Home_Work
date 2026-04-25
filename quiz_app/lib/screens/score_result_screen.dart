import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';

class ScoreResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ScoreResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Center(
          child: Text(
            'Your Score: $score / $totalQuestions',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
