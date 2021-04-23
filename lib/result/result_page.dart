import 'package:devquiz/challenge/widgets/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int numberOfQuestions;
  final int result;

  ResultPage({
    required this.title,
    required this.numberOfQuestions,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.only(top: 100, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text("Parabéns!", style: AppTextStyles.heading40),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: "Você concluiu",
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(text: "\n$title", style: AppTextStyles.bodyBold),
                      TextSpan(
                        text: "\ncom $result de $numberOfQuestions acertos",
                        style: AppTextStyles.body,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.purple(
                          label: "Compartilhar",
                          onTap: () {
                            Share.share(
                                "Legal! Eu acertei $result de $numberOfQuestions em $title no DevQuiz!");
                          }),
                    )),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.white(
                          label: "Voltar ao início",
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
