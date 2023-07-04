import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/components/icon_text_row.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LmsDrawer extends StatelessWidget {
  const LmsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: LmsColorUtil.primaryThemeColor,
      width: ScreenUtil().screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListView(
            padding: EdgeInsets.only(
                top: 60.h, left: 46.w, right: 10.w, bottom: 10.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                horizontalTitleGap: 15.w,
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                leading: CircleAvatar(
                  radius: 40.sp,
                  backgroundColor: Colors.grey,
                  child: Image.asset(
                    ImageConstants.BOOK,
                    fit: BoxFit.cover,
                    width: 45.sp,
                    alignment: Alignment.center,
                  ),
                ),
                title:
                    Text("Tarun Chauhan", style: LmsTextUtil.textManrope20()),
                subtitle: Text("USER008",
                    style: LmsTextUtil.textManrope12(color: Colors.white)),
              ),
              SizedBox(height: 30.h),
              IconTextRow(
                iconData: Icons.home_outlined,
                title: "Home",
                onTap: () {
                  Get.back();
                  Get.to(Routes.LMS_DASHBOARD);
                },
              ),
              SizedBox(height: 30.h),
              IconTextRow(
                  iconData: Icons.account_circle_outlined,
                  title: "Profile",
                  onTap: () {
                    Get.back();
                    Get.to(Routes.MY_PROFILE);
                  }),
              SizedBox(height: 30.h),
              IconTextRow(
                  iconData: Icons.star,
                  title: "My Courses",
                  onTap: () {
                    Get.back();
                    Get.to(Routes.LMS_MY_COURSES);
                  }),
              SizedBox(height: 30.h),
              IconTextRow(
                iconData: Icons.menu_book_sharp,
                title: "Knowledge Repository",
                onTap: () {
                  Get.back();
                  Get.to(Routes.KNOWLEDGE_REPOSITORY);
                },
              ),
              SizedBox(height: 30.h),
              IconTextRow(
                iconData: Icons.event_sharp,
                title: "Events",
                onTap: () {
                  Get.back();
                  Get.to(Routes.EVENTS);
                },
              ),
              SizedBox(height: 30.h),
              IconTextRow(
                iconData: Icons.support_agent_sharp,
                title: "Support",
                onTap: () {
                  Get.back();
                  Get.to(Routes.SUPPORT);
                },
              ),
              SizedBox(height: 30.h),
              IconTextRow(
                  iconData: Icons.logout,
                  title: "Logout",
                  onTap: () {
                    Get.offAll(Routes.AUTH);
                  }),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 37.h),
            child: Text("Version 1.01", style: LmsTextUtil.textManrope16()),
          ),
        ],
      ),
    );
  }
}
