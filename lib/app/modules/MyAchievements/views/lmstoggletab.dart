import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class LmsToggleTab extends StatefulWidget {
  const LmsToggleTab({Key? key}) : super(key: key);

  @override
  State<LmsToggleTab> createState() => _LmsToggleTabState();
}

class _LmsToggleTabState extends State<LmsToggleTab> {
  int _tabTextIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return FlutterToggleTab(
      labels: [" Certificates (5) ", "Badges(2)"],
      width: 70.w,
      height: 41.h,
      borderRadius: 10.sp,
      isScroll: false,
      selectedTextStyle: LmsTextUtil.textManrope16(
        color: LmsColorUtil.greyColor10.withOpacity(.80),
      ),
      selectedBackgroundColors: [Colors.white],
      unSelectedTextStyle: LmsTextUtil.textManrope16(color: LmsColorUtil.greyColor5),
      unSelectedBackgroundColors: [LmsColorUtil.greyColor2],
      selectedIndex: _tabTextIndexSelected,
      selectedLabelIndex: (index) {
        setState(() {
          _tabTextIndexSelected = index;
        });
        _tabTextIndexSelected = index;
      },
      marginSelected: EdgeInsets.all(2.sp),
    );
  }
}
