import 'package:dronalms/app/modules/AttendQuiz/components/quiz_container.dart';
import 'package:dronalms/app/modules/AttendQuiz/components/round_x.dart';
import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructionView extends StatelessWidget {
  const InstructionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizContainer(
      width: 356,
      height: 123,
      containerChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Instructions", style: LmsTextUtil.textPoppins14()),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RoundX(
                roundColor: LmsColorUtil.greenLight.withOpacity(0.15),
              ),

              SizedBox(width: 40.w),
              RoundX(
                roundColor: LmsColorUtil.pinkLight.withOpacity(0.15),
              ),
              Text(
                "Wrong Answered Question",
                style: LmsTextUtil.textRoboto8(),
              ),
            ],
          ),
          Row(
            children: [
              RoundX(
                roundColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
