import 'package:learningcourses/app/components/button.dart';
import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/drop_down_text_field.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/components/round_icon_button.dart';
import 'package:learningcourses/app/components/simple_text_field.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/support_controller.dart';

class SupportView extends GetView<SupportController> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: LmsDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 24.w),
                RoundIconButton(onTap: () {
                  Get.offNamed(Routes.LMS_DASHBOARD);
                }),
                SizedBox(width: 45.w),
                Text('Support', style: LmsTextUtil.textRoboto24()),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 36.w, right: 36.w, top: 45.h),
                children: [
                  SimpleTextField(
                    hintText: "Location",
                    textEditingController: locationController,
                    preIconData: Icons.location_on_outlined,
                  ),
                  SizedBox(height: 25.h),
                  SimpleTextField(
                    hintText: "Department",
                    textEditingController: departmentController,
                    preIconData: Icons.workspace_premium_outlined,
                  ),
                  SizedBox(height: 25.h),
                  MyDropDownFormField(),
                  SizedBox(height: 25.h),
                  SimpleTextField(
                    preIconData: Icons.description,
                    hintText: "Description",
                    textEditingController: descriptionController,
                    maxLines: 6,
                    textInputType: TextInputType.multiline,
                  ),
                  SizedBox(height: 25.h),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        MyButton(
                          title: "Browse",
                          onPressed: () {},
                          buttonHeight: 48.h,
                          buttonWidth: 153.w,
                          buttonContainerColor: LmsColorUtil.greyColor2,
                          buttonRadius: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.attach_file_rounded, color: Colors.black, size: 18.sp),
                              Text("Browse", style: LmsTextUtil.textPoppins18(color: Colors.black)),
                            ],
                          ),
                        ),
                        MyButton(
                          title: "Submit",
                          onPressed: () {},
                          buttonHeight: 48.h,
                          buttonWidth: 153.w,
                          buttonContainerColor: LmsColorUtil.primaryThemeColor,
                          buttonRadius: 30,
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
