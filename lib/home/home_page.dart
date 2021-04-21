import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/home/home_controller.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/home/widgets/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });

    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return controller.state == HomeState.success
        ? Scaffold(
            appBar: AppBarWidget(
              user: controller.user!,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LevelButtonWidget(
                        label: "Fácil",
                      ),
                      LevelButtonWidget(
                        label: "Médio",
                      ),
                      LevelButtonWidget(
                        label: "Difícil",
                      ),
                      LevelButtonWidget(
                        label: "Perito",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,
                      children: controller.quizzes!
                          .map((quiz) => QuizCardWidget(
                                title: quiz.title,
                                completed:
                                    "${quiz.questionsAnswered} de ${quiz.questions.length}",
                                completedPercent: quiz.questionsAnswered /
                                    quiz.questions.length,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
              ),
            ),
          );
  }
}
