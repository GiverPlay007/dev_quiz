import 'package:devquiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;

  QuestionModel({
    required this.title,
    required this.answers,
  }) : assert(answers.length == 4);

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'] as String,
      answers: List<AnswerModel>.from(
        map['answers'].map((e) => AnswerModel.fromMap(e)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'answer': this.answers.map((e) => e.toMap()).toList(),
    };
  }
}
