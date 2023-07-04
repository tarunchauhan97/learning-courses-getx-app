import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({Key? key, required this.iconData, required this.title, required this.onTap})
      : super(key: key);
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 18.sp,
          ),
          SizedBox(width: 17.w),
          Text(
            title,
            style: LmsTextUtil.textManrope16(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
