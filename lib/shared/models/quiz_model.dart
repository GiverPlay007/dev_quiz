import 'package:devquiz/shared/models/question_model.dart';

enum Level {easy, medium, hard, expert}

extension LevelStringExt on String {
  Level get parse => {
    "easy": Level.easy,
    "medium": Level.medium,
    "hard": Level.hard,
    "expert": Level.expert
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.easy: "easy",
    Level.medium: "medium",
    Level.hard: "hard",
    Level.expert: "expert"
  }[this]!;
}

class QuizModel{
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.image,
    required this.level});

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return new QuizModel(
      title: map['title'] as String,
      questions: List<QuestionModel>.from(map['questions'].map((e) => QuestionModel.fromMap(e))),
      questionsAnswered: map['questionsAnswered'] ?? 0,
      image: map['image'] as String,
      level: map['level'].toString().parse,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'questions': this.questions.map((e) => e.toMap()).toList(),
      'questionsAnswered': this.questionsAnswered,
      'image': this.image,
      'level': this.level.parse,
    };
  }

}