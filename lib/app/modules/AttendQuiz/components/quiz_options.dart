import 'package:dronalms/app/modules/AttendQuiz/controllers/attend_quiz_controller.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizOptions extends GetView<AttendQuizController> {
  QuizOptions({required this.quizOptions});

  final List<String> quizOptions;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // for (int i = 0; i < 4; i++)
        //   QuizButton(
        //     option: quizOptions[i],
        //     isSelected: quizOptions[i] == "1" ? true : false,
        //   ),
      ],
    );
  }
}
