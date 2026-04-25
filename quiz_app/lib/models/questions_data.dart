import 'package:quiz_app/models/question_model.dart';

class QuestionsData {
  static List<QuestionModel> getQuestions() {
    return [
      QuestionModel(
        question: '''How would you describe
your level of satisfaction
with the healthcare
system?''',
        answers: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
      ),
      QuestionModel(
        question: '''How often do you
visit a doctor for checkups?''',
        answers: ['Regularly', 'Once a year', 'Rarely', 'Never'],
      ),
      QuestionModel(
        question: '''What vitamins do you
take?''',
        answers: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
        isMultiChoice: true,
      ),
      QuestionModel(
        question: '''How many hours do you
spend on screens daily?''',
        answers: ['Less than 2h', '2-4h', '4-6h', 'More than 6h'],
      ),
    ];
  }
}
