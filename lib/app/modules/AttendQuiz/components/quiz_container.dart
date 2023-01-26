import 'package:dronalms/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.containerChild,
  }) : super(key: key);
  final double width;
  final double height;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(left: 17.w),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(color: LmsColorUtil.greyColor2),
      ),
      child: containerChild,
    );
  }
}
