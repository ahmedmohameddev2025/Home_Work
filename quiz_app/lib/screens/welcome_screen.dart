import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
import 'package:quiz_app/widgets/start_quiz_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                'Good morning,',
                style: AppTextStyles.regular16.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'New topic is waiting',
                style: AppTextStyles.medium24.copyWith(color: Colors.white),
              ),
              const Spacer(),
              StartQuizButton(onTap: () => _navigateToQuiz(context)),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}

void _navigateToQuiz(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const QuestionsScreen()),
  );
}
