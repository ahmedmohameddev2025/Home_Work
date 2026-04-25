class QuestionModel {
  final String question;
  final List<String> answers;
  List<String> selectedAnswers = [];
  final bool isMultiChoice;

  QuestionModel({
    required this.question,
    required this.answers,
    this.isMultiChoice = false,
  });
}
