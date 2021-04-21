import 'package:devquiz/shared/models/question_model.dart';

enum Level {
  facil,
  medio,
  dificil,
  perito,
}

class QuizModel {
  final List<QuestionModel> questions;
  final String title;
  final String image;
  final Level level;
  final int questionsAnswered;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.image,
    required this.level,   
  });
}
