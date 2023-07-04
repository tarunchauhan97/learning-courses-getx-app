import 'package:learningcourses/app/modules/MyProfile/controllers/my_profile_controller.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileTextField extends StatelessWidget {
  ProfileTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController,
    this.isProtectedField = false,
    required this.preIconData,
  }) : super(key: key);
  final String hintText;
  final TextEditingController textEditingController;
  final bool isProtectedField;
  final MyProfileController fieldsController = Get.find<MyProfileController>();
  final IconData preIconData;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (fieldsController.isReadOnly.value == true) {
        return TextFormField(
          controller: textEditingController,
          textAlign: TextAlign.start,
          readOnly: true,
          enableInteractiveSelection: false,
          style: LmsTextUtil.textPoppins14(),
          decoration: InputDecoration(
            // hintText: hintText,
            // hintStyle: LmsTextUtil.textPoppins14(),
            labelText: hintText,
            labelStyle: LmsTextUtil.textPoppins14(),
            prefixIcon: Icon(preIconData, color: LmsColorUtil.primaryThemeColor),
            contentPadding: EdgeInsets.only(left: 30.w),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.sp),
              borderSide: BorderSide(color: LmsColorUtil.greyColor10),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.sp),
                borderSide: BorderSide(color: LmsColorUtil.greyColor4, width: 1)),
          ),
        );
      } else {
        return TextFormField(
          controller: textEditingController,
          textAlign: TextAlign.start,
          readOnly: fieldsController.isReadOnly.value == !isProtectedField,
          enableInteractiveSelection: false,
          style: LmsTextUtil.textPoppins14(),
          decoration: InputDecoration(
            // hintText: hintText,
            // hintStyle: LmsTextUtil.textPoppins14(),
            labelText: hintText,
            labelStyle: LmsTextUtil.textPoppins14(),
            prefixIcon: Icon(preIconData, color: LmsColorUtil.primaryThemeColor),
            contentPadding: EdgeInsets.only(left: 30.w),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.sp),
              borderSide: BorderSide(color: LmsColorUtil.greyColor10),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.sp),
                borderSide: BorderSide(color: LmsColorUtil.greyColor4, width: 1)),
            filled: isProtectedField,
            fillColor: LmsColorUtil.greyColor5.withOpacity(.20),
          ),
        );
      }
    });
  }
}
