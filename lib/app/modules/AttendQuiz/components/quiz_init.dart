import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dronalms/app/components/button.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_container.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_options.dart';
import 'package:dronalms/app/modules/AttendQuiz/controllers/attend_quiz_controller.dart';
import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizInit extends GetView<AttendQuizController> {
  const QuizInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizContainer(
      width: 356,
      height: 510,
      containerChild: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("UPSC -set 1 0 | 7 Questions", style: LmsTextUtil.textPoppins14()),
              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: CircularCountDownTimer(
                  width: 49.w,
                  height: 49.h,
                  duration: 600,
                  isReverse: true,
                  textFormat: CountdownTextFormat.MM_SS,
                  textStyle: LmsTextUtil.textManrope12(color: Colors.black),
                  fillColor: LmsColorUtil.greyColor3,
                  ringColor: LmsColorUtil.primaryThemeColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.h, left: 32.w, right: 15.w, bottom: 29.h),
            child: Text(
              "Questions 1:\n${controller.questionStatement}",
              style: LmsTextUtil.textPoppins12(),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: MyButton(
                title: "Next",
                onPressed: () {
                  controller.quizStart.value = true;
                },
                buttonWidth: 80,
                buttonHeight: 37,
              ),
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
