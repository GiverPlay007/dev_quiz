import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.none);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    this.user = UserModel(
      name: "Willzinho",
      avatarURL: "https://github.com/GiverPlay007.png",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    this.quizzes = [
      QuizModel(
        image: AppImages.blocks,
        level: Level.facil,
        title: "NLW 05 Flutter",
        questionsAnswered: 1,
        questions: [
          QuestionModel(
            title: "Está curtindo flutter?",
            answers: [
              AnswerModel(title: "Sim :)"),
              AnswerModel(title: "Claro :D", isRight: true),
              AnswerModel(title: "Não :("),
              AnswerModel(title: "Mais ou menos :|"),
            ],
          ),
          QuestionModel(
            title: "Sim?",
            answers: [
              AnswerModel(title: "Sim"),
              AnswerModel(title: "Claro", isRight: true),
              AnswerModel(title: "Talvez"),
              AnswerModel(title: "Super"),
            ],
          ),
        ],
      ),
    ];

    state = HomeState.success;
  }
}
