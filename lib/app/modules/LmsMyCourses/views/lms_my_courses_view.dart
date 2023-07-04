import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/modules/LmsMyCourses/views/my_courses_tabs_view.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/lms_my_courses_controller.dart';

class LmsMyCoursesView extends GetView<LmsMyCoursesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: LmsDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 18.w, top: 10.h, right: 18.w, bottom: 10.h),
              alignment: Alignment.topLeft,
              child: Text("My Courses", style: LmsTextUtil.textRoboto24()),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 10.h, right: 20.w, bottom: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (controller.tabController.index > 0) {
                        controller.tabController.animateTo(controller.tabController.index - 1);
                      }
                    },
                    child: Icon(Icons.arrow_back_ios, size: 20.sp),
                  ),
                  Expanded(
                    child: TabBar(
                      onTap: (value) {
                        controller.tabController.index = value;
                      },
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      controller: controller.tabController,
                      labelStyle: TextStyle(color: Colors.black),
                      unselectedLabelColor: LmsColorUtil.greyColor4,
                      labelColor: Colors.black,
                      tabs: [
                        Text("All(4)"),
                        Text("Assigned(6)"),
                        Text("In-Progress(4)"),
                        Text("Overdue(2)"),
                        Text("Completed(1)"),
                        Text("Failed(7)"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.tabController.index < 6) {
                        controller.tabController.animateTo(controller.tabController.index + 1);
                      } else {
                        Get.snackbar("Can't Go ahead", "Try Again");
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios, size: 20.sp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [
                  MyCoursesTabsView(items: 10),
                  MyCoursesTabsView(items: 5),
                  MyCoursesTabsView(items: 4),
                  MyCoursesTabsView(items: 2),
                  MyCoursesTabsView(items: 2),
                  MyCoursesTabsView(items: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
