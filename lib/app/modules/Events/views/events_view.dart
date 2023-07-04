import 'package:learningcourses/app/components/custom_appbar.dart';
import 'package:learningcourses/app/components/lms_drawer.dart';
import 'package:learningcourses/app/components/round_icon_button.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
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
                Text('Events', style: LmsTextUtil.textRoboto24()),
              ],
            ),
            SizedBox(height: 35.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 45.w, right: 39.w),
                shrinkWrap: true,
                children: [
                  Container(
                    height: 550.h,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 1),
                      ],
                    ),
                    child: SfCalendar(
                      view: CalendarView.month,
                      todayHighlightColor: LmsColorUtil.primaryThemeColor,
                      cellBorderColor: Colors.transparent,
                      showNavigationArrow: true,
                      showDatePickerButton: true,
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
// child: CalendarDatePicker(
//   firstDate: DateTime(2018),
//   initialDate: DateTime(2022),
//   lastDate: DateTime.now(),
//   onDateChanged: (DateTime value) {},
// ),
