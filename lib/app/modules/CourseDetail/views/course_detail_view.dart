import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/round_icon_button.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/modules/CourseDetail/views/course_content_tile_view.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../controllers/course_detail_controller.dart';

class CourseDetailView extends GetView<CourseDetailController> {
  const CourseDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: LmsDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundIconButton(onTap: () {
                      Get.back();
                    }),
                    Text('Design Masterclass', style: LmsTextUtil.textRubik24()),
                    SizedBox(),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  children: [
                    myProgressIndicator(value: 18),
                    Container(
                      height: 130.h,
                      width: ScreenUtil().screenWidth,
                      margin: EdgeInsets.only(top: 18.h, bottom: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.sp),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.COURSEBANNER),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Overview",
                            style: LmsTextUtil.textManrope14(fontWeight: FontWeight.w500),
                          ),
                        ),
                        ReadMoreText(
                          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500,Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500,",
                          // trimLines: 5,
                          trimLength: 160,
                          colorClickableText: LmsColorUtil.primaryThemeColor,
                          style: LmsTextUtil.textRubik14(),
                          trimCollapsedText: "Read More",
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            iconTextRow(iconData: Icons.access_time_outlined, title: "5 Hrs"),
                            SizedBox(width: 10.w),
                            iconTextRow(
                                iconData: Icons.sticky_note_2_sharp, title: "Cross Training"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text("Course Content", style: LmsTextUtil.textManrope24()),
                    SizedBox(height: 15.h),
                    CourseContentTile(chapterNo: 1),
                    CourseContentTile(chapterNo: 2),
                    CourseContentTile(chapterNo: 3),
                  ],
                ),
              ],
            ),
          ),
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

  Widget myProgressIndicator({required int value}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Progress", style: LmsTextUtil.textManrope14(fontWeight: FontWeight.w600)),
            Text("$value% Complete", style: LmsTextUtil.textManrope12(color: Colors.black))
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          width: double.infinity,
          child: LinearProgressIndicator(
            backgroundColor: LmsColorUtil.greyColor3,
            value: value / 100,
            color: LmsColorUtil.primaryThemeColor,
            minHeight: 8.h,
          ),
        ),
      ],
    );
  }
}
