import 'package:learningcourses/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.h,
        width: 30.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: LmsColorUtil.greyColor4,
            width: 1.5.sp,
          ),
        ),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: LmsColorUtil.greyColor10,
          size: 16.sp,
        ),
      ),
    );
  }
}
