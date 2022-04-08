// Class to ceate a model fo each question
// There are thee variabels, the question, the answer and the four choices.

class Question {
  String question;
  String answer;
  List<String> choices;

  // costroctor
  Question({
    required this.question,
    required this.answer,
    required this.choices,
  });
}
