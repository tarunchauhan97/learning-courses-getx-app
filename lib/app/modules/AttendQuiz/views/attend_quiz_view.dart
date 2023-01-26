import 'package:dronalms/app/components/custom_appbar.dart';
import 'package:dronalms/app/components/lms_drawer.dart';
import 'package:dronalms/app/components/round_icon_button.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/instruction_view.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/questions_count_view.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_init.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/quiz_rules.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/attend_quiz_controller.dart';

class AttendQuizView extends GetView<AttendQuizController> {
  const AttendQuizView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 22.w),
                  RoundIconButton(
                    onTap: () => Get.back(),
                  ),
                  SizedBox(width: 28.w),
                  Text('UPSC Quiz 3', style: LmsTextUtil.textRoboto24()),
                ],
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 24.h, bottom: 15.h),
                child: Obx(
                  () => Column(
                    children: [
                      InstructionView(),
                      controller.quizStart.value ? QuizInit() : QuizRules(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
