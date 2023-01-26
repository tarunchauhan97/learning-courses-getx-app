import 'package:dronalms/app/components/button.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_container.dart';
import 'package:dronalms/app/modules/AttendQuiz/controllers/attend_quiz_controller.dart';
import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizRules extends GetView<AttendQuizController> {
  const QuizRules({Key? key}) : super(key: key);

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
              Container(
                height: 49.h,
                width: 49.w,
                margin: EdgeInsets.only(right: 15.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(width: 2, color: LmsColorUtil.greyColor3),
                ),
                child: Text("10:00", style: LmsTextUtil.textManrope12(color: Colors.black)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 5.w,
                height: 5.h,
                margin: EdgeInsets.only(right: 9.w),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: LmsColorUtil.primaryThemeColor),
              ),
              Text("All questions are mandatory.", style: LmsTextUtil.textPoppins12()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 5.w,
                height: 5.h,
                margin: EdgeInsets.only(right: 9.w),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: LmsColorUtil.primaryThemeColor),
              ),
              Text("There is no negative marking.", style: LmsTextUtil.textPoppins12()),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: MyButton(
                title: "Start Quiz",
                onPressed: () {
                  controller.quizStart.value = true;
                },
                buttonWidth: 315,
              ),
            ),
          ),
          SizedBox(height: 19.h),
        ],
      ),
    );
  }
}
