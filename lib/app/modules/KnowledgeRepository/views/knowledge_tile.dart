import 'package:dronalms/app/modules/KnowledgeRepository/controllers/knowledge_repository_controller.dart';
import 'package:dronalms/app/modules/KnowledgeRepository/views/tile_content_view.dart';
import 'package:dronalms/app/theme/color_util.dart';
import 'package:dronalms/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KnowledgeTile extends GetView<KnowledgeRepositoryController> {
  const KnowledgeTile({Key? key, required this.tileTitle}) : super(key: key);
  final String tileTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => TileContentView());
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25.sp,
              backgroundColor: LmsColorUtil.lightBlueIcons,
              child: Icon(
                Icons.menu_book_sharp,
                color: LmsColorUtil.primaryThemeColor,
                size: 20.sp,
              ),
            ),
            title: Text(
              tileTitle,
              style: LmsTextUtil.textManrope14(fontWeight: FontWeight.w600),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 25.sp,
              color: LmsColorUtil.primaryThemeColor,
            ),
            contentPadding: EdgeInsets.only(left: 0, right: 0, top: 0),
            minVerticalPadding: 0,
            horizontalTitleGap: 10,
            minLeadingWidth: 0,
            visualDensity: VisualDensity(horizontal: 0, vertical: 0),
            dense: true,
          ),
          SizedBox(height: 5.h),
          Divider(
            height: 1,
            endIndent: 2,
            indent: 2,
            color: LmsColorUtil.greyColor2,
          ),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
