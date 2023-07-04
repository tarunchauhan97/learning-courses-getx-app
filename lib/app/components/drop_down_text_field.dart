import 'package:learningcourses/app/modules/Support/controllers/support_controller.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MyDropDownFormField extends GetView<SupportController> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      value: controller.issueType.value,
      icon: const Icon(Icons.keyboard_arrow_down),
      style: LmsTextUtil.textPoppins14(),
      items: const [
        DropdownMenuItem(
          value: 'Technical',
          child: Text("Technical"),
        ),
        DropdownMenuItem(
          value: 'Content related',
          child: Text("Content related"),
        ),
        DropdownMenuItem(
          value: 'Other',
          child: Text("Other"),
        ),
      ],
      onChanged: (String? value) {
        controller.issueType.value = value!;
      },
      decoration: InputDecoration(
        labelText: "Issue Type",
        labelStyle: LmsTextUtil.textPoppins14(),
        enabled: true,
        prefixIcon: Icon(
          Icons.error_outline_outlined,
          color: LmsColorUtil.primaryThemeColor,
        ),
        // suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
        contentPadding: EdgeInsets.only(left: 20.w),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.sp),
          borderSide: BorderSide(color: LmsColorUtil.greyColor10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.sp),
          borderSide: BorderSide(color: LmsColorUtil.greyColor4, width: 1),
        ),
      ),
    );
  }
}

class DropDownField extends GetView<SupportController> {
  @override
  Widget build(BuildContext context) {
    return FormField(builder: (FormFieldState state) {
      return DropdownButtonHideUnderline(
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: "Issue Type",
            labelStyle: LmsTextUtil.textPoppins14(),
            enabled: true,
            prefixIcon: Icon(
              Icons.error_outline_outlined,
              color: LmsColorUtil.primaryThemeColor,
            ),
            suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
            contentPadding: EdgeInsets.only(left: 30.w),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.sp),
              borderSide: BorderSide(color: LmsColorUtil.greyColor10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.sp),
              borderSide: BorderSide(color: LmsColorUtil.greyColor4, width: 1),
            ),
          ),
          child: GestureDetector(
            onTap: () {
              DropdownButton(
                isExpanded: true,
                value: controller.issueType.value,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: const [
                  DropdownMenuItem(
                    value: 'Technical',
                    child: Text("Technical"),
                  ),
                  DropdownMenuItem(
                    value: 'Content related',
                    child: Text("Content related"),
                  ),
                  DropdownMenuItem(
                    value: 'Other',
                    child: Text("Other"),
                  ),
                ],
                onChanged: (String? value) {
                  controller.issueType.value = value!;
                },
              );
            },
            child: Text("Issue Type"),
          ),
        ),
      );
    });
  }
}

class DropDownTextField extends GetView<SupportController> {
  const DropDownTextField({
    Key? key,
    required this.hintText,
    // required this.textEditingController,
    this.obscureText = false,
    required this.preIconData,
  }) : super(key: key);
  final String hintText;

  // final TextEditingController textEditingController;
  final bool obscureText;
  final IconData preIconData;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onTap: () {
      //
      // },
      textAlign: TextAlign.start,
      style: LmsTextUtil.textPoppins14(),
      obscureText: obscureText,
      enableInteractiveSelection: false,
      // enabled: false,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: LmsTextUtil.textPoppins14(),
        prefixIcon: Icon(preIconData, color: LmsColorUtil.primaryThemeColor),
        suffixIcon: GestureDetector(
          onTap: () {
            DropdownButton(
              isExpanded: true,
              value: controller.issueType.value,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: const [
                DropdownMenuItem(
                  value: 'Technical',
                  child: Text("Technical"),
                ),
                DropdownMenuItem(
                  value: 'Content related',
                  child: Text("Content related"),
                ),
                DropdownMenuItem(
                  value: 'Other',
                  child: Text("Other"),
                ),
              ],
              onChanged: (String? value) {
                controller.issueType.value = value!;
              },
            );
          },
          child: Icon(Icons.keyboard_arrow_down_rounded),
        ),
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
  }
}
