import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CertificateView extends GetView {
  const CertificateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.w,
      height: 213.h,
      margin: EdgeInsets.only(top: 15.h),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.CERTSAMPLE),
          alignment: Alignment.topCenter,
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(30.sp),
        border: Border.all(color: LmsColorUtil.greyColor2),
      ),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28.5.sp),
              bottomRight: Radius.circular(29.sp),
            ), //
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          height: 43.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: LmsColorUtil.greyColor5,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            // borderRadius: BorderRadius.only(
            //   bottomLeft: Radius.circular(17.sp),
            //   bottomRight: Radius.circular(18.sp),
            // ),
          ),
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 14.w, right: 14.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leadership Development",
                style: LmsTextUtil.textManrope14(fontWeight: FontWeight.w700),
              ),
              Icon(Icons.download_outlined, size: 20.sp),
            ],
          ),
        ),
      ),
    );
  }
}
