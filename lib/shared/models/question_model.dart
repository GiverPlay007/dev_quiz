import 'package:devquiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answer;

  QuestionModel({
    required this.title,
    required this.answer,
  }) : assert(answer.length == 4);

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'] as String,
      answer: List<AnswerModel>.from(
        map['answers'].map((e) => AnswerModel.fromMap(e)),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'answer': this.answer.map((e) => e.toMap()).toList(),
    };
  }
}
