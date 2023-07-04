import 'package:learningcourses/app/components/button.dart';
import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/round_icon_button.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/components/profile_text_field.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/my_profile_controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  MyProfileView({Key? key}) : super(key: key);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: Colors.transparent),
      drawer: LmsDrawer(),
      body: SafeArea(
        child: Column(
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
                Text('My Profile', style: LmsTextUtil.textRoboto24()),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                controller: scrollController,
                padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 51.h),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 30.w),
                          Icon(
                            Icons.manage_accounts,
                            size: 88.w,
                            color: LmsColorUtil.greyColor10,
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.isReadOnly.value = false;
                            },
                            child: Container(
                              height: 42.h,
                              width: 42.w,
                              margin: EdgeInsets.only(top: 5.h),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: LmsColorUtil.primaryThemeColor,
                                boxShadow: [
                                  BoxShadow(color: Colors.black),
                                ],
                              ),
                              child: Icon(Icons.edit, color: Colors.white, size: 25.sp),
                            ),
                          ),
                        ],
                      ),
                      ...profileListFields(),
                    ],
                  ),
                  SizedBox(height: 13.h),
                  Obx(
                    () => controller.isReadOnly.value == false
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: MyButton(
                                  title: "Save",
                                  onPressed: () {
                                    controller.isReadOnly.value = true;
                                  },
                                  buttonHeight: 41,
                                  buttonWidth: 168.w,
                                  buttonRadius: 5,
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: MyButton(
                                  title: "Cancel",
                                  onPressed: () {
                                    controller.isReadOnly.value = true;
                                  },
                                  buttonHeight: 41,
                                  buttonWidth: 168.w,
                                  buttonRadius: 5,
                                  buttonContainerColor: LmsColorUtil.greyColor5,
                                ),
                              ),
                            ],
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> profileListFields() {
    return [
      SizedBox(height: 20.h),
      ProfileTextField(
        hintText: "UserId",
        textEditingController: controller.userIdController,
        isProtectedField: true,
        preIconData: Icons.verified_user_outlined,
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Username",
        textEditingController: controller.userNameController,
        preIconData: Icons.person_outline_rounded,
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Email",
        textEditingController: controller.emailController,
        preIconData: Icons.email_outlined,
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Phone No.",
        textEditingController: controller.phoneNoController,
        preIconData: Icons.phone,
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Entity",
        textEditingController: controller.entityController,
        preIconData: Icons.perm_contact_calendar_outlined,
        isProtectedField: true,
      ),
      SizedBox(height: 13.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ProfileTextField(
              hintText: "DOB",
              textEditingController: controller.dateOfBirthController,
              isProtectedField: true,
              preIconData: Icons.date_range_outlined,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: ProfileTextField(
              hintText: "Date of Joining",
              textEditingController: controller.dateOfBirthController,
              isProtectedField: true,
              preIconData: Icons.star,
            ),
          ),
        ],
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Location",
        textEditingController: controller.locationController,
        preIconData: Icons.location_on_outlined,
      ),
      SizedBox(height: 13.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ProfileTextField(
              hintText: "Role",
              textEditingController: controller.roleController,
              isProtectedField: true,
              preIconData: Icons.work_history_outlined,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: ProfileTextField(
              hintText: "Department",
              textEditingController: controller.departmentController,
              isProtectedField: true,
              preIconData: Icons.workspace_premium_outlined,
            ),
          ),
        ],
      ),
      SizedBox(height: 13.h),
      ProfileTextField(
        hintText: "Language",
        textEditingController: controller.languageController,
        preIconData: Icons.language_outlined,
      ),
    ];
  }
}
