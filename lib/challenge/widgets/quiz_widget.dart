import 'package:devquiz/challenge/widgets/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          ...question.answers
              .map(
                (answer) => AnswerWidget(
                  title: answer.title,
                  isRight: answer.isRight,
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
