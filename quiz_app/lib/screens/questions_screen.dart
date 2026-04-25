import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/action_buttons.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
import 'package:quiz_app/widgets/questions_page_view_builder.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<QuestionModel> questions = [
    QuestionModel(
      question: '''How would you describe
your level of satisfaction
with the healthcare
system?''',
      answers: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    ),
    QuestionModel(
      question: 'How many minutes of moderate exercise per week does WHO recommend?',
      answers: ['150 minutes', '75 minutes', '200 minutes', '100 minutes'],
    ),
    QuestionModel(
      question: '''What vitamins do you
take?''',
      answers: [
        'Vitamin D3',
        'Vitamin B',
        'Zinc',
        'Magnesium',
      ],
      allowMultiple: true,
    ),
    QuestionModel(
      question: 'Which vitamin is produced by the body when exposed to sunlight?',
      answers: ['Vitamin D', 'Vitamin C', 'Vitamin A', 'Vitamin E'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionsPageViewBuilder(
                questions: questions,
                pageController: pageController,
              ),
              ActionButtons(pageController: pageController),
              const SizedBox(height: 33.5),
            ],
          ),
        ),
      ),
    );
  }
}
