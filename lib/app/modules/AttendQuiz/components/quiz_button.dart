import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.option,
    this.isSelected = false,
  }) : super(key: key);
  final String option;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314,
      height: 46,
      margin: EdgeInsets.only(bottom: 15.h, right: 15.w),
      // padding: EdgeInsets.only(right: 15.w),
      // alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        border: Border.all(color: isSelected ? Colors.white : LmsColorUtil.greyColor2),
        color: isSelected ? LmsColorUtil.greenLight.withOpacity(0.15) : Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 23.w),
          isSelected
              ? Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green.shade600,
                  size: 20.sp,
                )
              : Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: LmsColorUtil.primaryThemeColor, width: 1.5),
                    shape: BoxShape.circle,
                  ),
                ),
          SizedBox(width: 9.w),
          Text(option, style: LmsTextUtil.textPoppins12())
        ],
      ),
    );
  }
}
