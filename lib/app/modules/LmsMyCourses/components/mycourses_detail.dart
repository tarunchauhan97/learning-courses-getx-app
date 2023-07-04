import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCoursesDetail extends StatelessWidget {
  const MyCoursesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.COURSE_DETAIL),
      child: Container(
        height: 230.h,
        width: ScreenUtil().screenWidth,
        margin: EdgeInsets.only(top: 10.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.COURSEBANNER),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15.sp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 82.h,
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                border: Border.all(color: LmsColorUtil.greyColor1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18.sp),
                  bottomRight: Radius.circular(18.sp),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.only(left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Design Masterclass", style: LmsTextUtil.textManrope20()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Due Date: 12-06-2022", style: LmsTextUtil.textManrope12()),
                      iconTextRow(iconData: Icons.access_time_outlined, title: "5 Hrs"),
                      iconTextRow(iconData: Icons.sticky_note_2_sharp, title: "Cross Training"),
                      progressIndicator(),
                      SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconTextRow({
    required IconData iconData,
    required String title,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          iconData,
          color: LmsColorUtil.primaryThemeColor,
          size: 18.sp,
        ),
        SizedBox(width: 2.w),
        Text(
          title,
          style: LmsTextUtil.textManrope12(color: Colors.black),
        ),
      ],
    );
  }

  Widget progressIndicator() {
    return Container(
      height: 45.h,
      width: 45.w,
      child: CircularPercentIndicator(
        radius: 22.sp,
        lineWidth: 5.sp,
        startAngle: 0.0,
        animation: true,
        progressColor: LmsColorUtil.primaryThemeColor,
        arcBackgroundColor: LmsColorUtil.greyColor1,
        arcType: ArcType.values[2],
        percent: .90,
        center: Text(
          "91%",
          style: LmsTextUtil.textManrope12(color: Colors.black),
        ),
      ),
    );
  }
}
