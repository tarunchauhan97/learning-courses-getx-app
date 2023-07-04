import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/constants/app_string_constants.dart';
import 'package:learningcourses/app/modules/LmsDashboard/components/button_box.dart';
import 'package:learningcourses/app/modules/LmsDashboard/components/corousel_slider.dart';
import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/modules/LmsDashboard/controllers/lms_dashboard_controller.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LmsDashboardView extends GetView<LmsDashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: LmsColorUtil.headerColor),
      drawer: LmsDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 540.h,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: 410.h,
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 10.h),
                      color: LmsColorUtil.headerColor,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: LmsCarouselSlider(),
                      ),
                    ),
                    Positioned(
                      width: ScreenUtil().screenWidth,
                      top: 380.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ButtonBox(
                            onTap: () => Get.toNamed(Routes.LMS_MY_COURSES),
                            imageConstants: ImageConstants.ONLINECOURSE,
                            boxName: LmsAppConstants.COURSES,
                          ),
                          ButtonBox(
                            onTap: () => Get.toNamed(Routes.KNOWLEDGE_REPOSITORY),
                            imageConstants: ImageConstants.BOOK,
                            boxName: LmsAppConstants.KNOWLEDGE_REPOSITORY,
                          ),
                          ButtonBox(
                            onTap: () => Get.toNamed(Routes.MY_ACHIEVEMENTS),
                            imageConstants: ImageConstants.ACHIEVEMENT,
                            boxName: LmsAppConstants.ACHIEVEMENTS,
                          ),
                          // SizedBox(width: 20.w),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBox(
                    onTap: () => Get.toNamed(Routes.EVENTS),
                    imageConstants: ImageConstants.CALENDAR,
                    boxName: LmsAppConstants.EVENTS,
                  ),
                  SizedBox(width: 20.w),
                  ButtonBox(
                    onTap: () => Get.toNamed(Routes.SUPPORT),
                    imageConstants: ImageConstants.TECHSUPPORT,
                    boxName: LmsAppConstants.SUPPORT,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
