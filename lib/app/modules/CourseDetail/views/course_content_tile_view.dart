import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseContentTile extends StatefulWidget {
  const CourseContentTile({Key? key, required this.chapterNo}) : super(key: key);
  final int chapterNo;

  @override
  State<CourseContentTile> createState() => _CourseContentTileState();
}

class _CourseContentTileState extends State<CourseContentTile> {
  bool showDropDown = false;

  final List<Widget> dropDownItems = [
    Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto"),
    Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto"),
    Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto"),
  ];

  @override
  initState() {
    super.initState();
    showDropDown = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (showDropDown == false) {
          setState(() {
            showDropDown = true;
          });
        } else {
          setState(() {
            showDropDown = false;
          });
        }
      },
      child: Container(
        width: ScreenUtil().screenWidth,
        height: showDropDown == false ? 65.h : (65.h * dropDownItems.length),
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp),
            border: Border.all(color: LmsColorUtil.greyColor2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20.sp,
                backgroundColor: LmsColorUtil.lightBlueIcons,
                child: Icon(
                  Icons.menu_book_sharp,
                  color: LmsColorUtil.primaryThemeColor,
                  size: 20.sp,
                ),
              ),
              title: Text(
                "Chapter ${widget.chapterNo}",
                style: LmsTextUtil.textManrope14(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto",
                style: LmsTextUtil.textRubik10(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: showDropDown
                  ? Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 25.sp,
                      color: LmsColorUtil.primaryThemeColor,
                    )
                  : Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 25.sp,
                      color: LmsColorUtil.primaryThemeColor,
                    ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                // side: BorderSide(color: LmsColorUtil.greyColor2),
              ),
              contentPadding: EdgeInsets.only(left: 12.w, right: 20.w, top: 0),
              minVerticalPadding: 15.h,
              horizontalTitleGap: 10.w,
              minLeadingWidth: 0,
              visualDensity: VisualDensity(horizontal: 0, vertical: -4.h),
              dense: true,
            ),
            showDropDown
                ? GestureDetector(
                    onTap: () => Get.toNamed(Routes.ATTEND_QUIZ),
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 12.w, right: 20.w, top: 0),
                      physics: NeverScrollableScrollPhysics(),
                      children: [...dropDownItems],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
