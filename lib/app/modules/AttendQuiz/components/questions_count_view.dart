import 'package:dronalms/app/modules/AttendQuiz/components/quiz_container.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/round_number.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuestionsCountView extends GetView {
  const QuestionsCountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizContainer(
      width: 356,
      height: 94,
      containerChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Questions", style: LmsTextUtil.textPoppins14()),
          SizedBox(
            width: double.infinity,
            height: 25.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 13.w),
              children: [
                RoundNumber(quizNumber: "1"),
                RoundNumber(quizNumber: "2"),
                RoundNumber(quizNumber: "3"),
                RoundNumber(quizNumber: "4"),
                RoundNumber(quizNumber: "5"),
                RoundNumber(quizNumber: "6"),
                RoundNumber(quizNumber: "7"),
                RoundNumber(quizNumber: "8"),
                RoundNumber(quizNumber: "9"),
                RoundNumber(quizNumber: "10"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
