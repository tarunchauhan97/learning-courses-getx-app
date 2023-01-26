import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundNumber extends StatelessWidget {
  const RoundNumber({
    Key? key,
    required this.quizNumber,
    this.roundColor = Colors.white,
  }) : super(key: key);
  final String quizNumber;
  final Color roundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 25.h,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: LmsColorUtil.greyColor4,
          width: 1.5.sp,
        ),
        color: roundColor,
      ),
      child: Text(quizNumber, style: LmsTextUtil.textPoppins14(color: LmsColorUtil.greyColor5)),
    );
  }
}
