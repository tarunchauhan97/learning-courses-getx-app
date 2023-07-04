import 'package:learningcourses/app/modules/LmsMyCourses/components/mycourses_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCoursesTabsView extends StatelessWidget {
  const MyCoursesTabsView({Key? key, this.items = 1}) : super(key: key);
  final int items;

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.only(left: 18.w, right: 18.w,bottom: 10.h), shrinkWrap: true, children: [
      for (int i = 0; i < items; i++) MyCoursesDetail(),
    ]);
  }
}
