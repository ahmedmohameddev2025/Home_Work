import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_data.dart';
import 'package:quiz_app/widgets/action_buttons.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
import 'package:quiz_app/widgets/page_view_builder.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final PageController _pageController = PageController();

  late final questions = QuestionsData.getQuestions();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: PageViewBuilder(
                    questions: questions,
                    pageController: _pageController,
                  ),
                ),
                ActionButtons(pageController: _pageController),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
