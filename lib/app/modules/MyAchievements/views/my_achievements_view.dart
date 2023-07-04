import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/modules/MyAchievements/views/certificate_view.dart';
import 'package:learningcourses/app/modules/MyAchievements/views/lmstoggletab.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/my_achievements_controller.dart';

class MyAchievementsView extends GetView<MyAchievementsController> {
  MyAchievementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: LmsDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, top: 20.h, right: 18.w, bottom: 10.h),
            child: Column(
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  alignment: Alignment.topLeft,
                  child: Text("Certificates & Badges", style: LmsTextUtil.textRoboto24()),
                ),
                SizedBox(height: 14.h),
                LmsToggleTab(),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Total Badges: 3",
                    style: LmsTextUtil.textManrope12(),
                  ),
                ),
                CertificateView(),
                CertificateView(),
                CertificateView(),
                CertificateView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
