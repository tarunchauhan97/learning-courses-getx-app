import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Future LmsNotificationView(BuildContext context) {
//   return showDialog(context: context, builder: (_) {
//     return Container(
//       height: 223.h,
//       width: 210.w,
//       child: Column(
//         children: [
//           Text("content"),
//           Text("content"),
//           Text("content"),
//           Text("content"),
//         ],
//       ),
//       child: AlertDialog(
//         title: Text("Notification"),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15.sp),
//         ),
//         content: ListView(
//           shrinkWrap: true,
//           children: [
//             Text("content"),
//             Text("content"),
//             Text("content"),
//             Text("content"),
//           ],
//         ),
//       ),
//     );
//   });
// }

class LmsNotificationView extends GetView {
  // const LmsNotificationView({Key? key}) : super(key: key);

  // Future LmsNotificationView(
  //     BuildContext context,
  //     ) {
  //   return showDialog(context: context, builder: () {});
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223.h,
      width: 210.w,
      child: Column(
        children: [
          Text("content"),
          Text("content"),
          Text("content"),
          Text("content"),
        ],
      ),
    );
  }
}
