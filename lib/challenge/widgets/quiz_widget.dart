import 'package:devquiz/challenge/widgets/answer_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title: "Kit de desenvolvimento de interface de usuário",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente",
            isSelected: true,
            isRight: true,
          ),
          AnswerWidget(
            title: "Acho que é uma marca de café da Himalaia",
          ),
          AnswerWidget(
            title: "Possibilita a criação de desktops que são muito incríveis",
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
