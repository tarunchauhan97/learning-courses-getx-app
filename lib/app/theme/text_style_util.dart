// ignore_for_file: non_constant_identifier_names, constant_identifier_names
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LmsTextUtil {
  static TextStyle textInter17() {
    return GoogleFonts.inter(
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textManrope24({Color color = Colors.black}) {
    return GoogleFonts.manrope(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle textManrope20({Color color = Colors.white}) {
    return GoogleFonts.manrope(
      fontSize: 20.sp,
      fontWeight: FontWeight.w800,
      color: color,
    );
  }

  static TextStyle textManrope16({Color color = Colors.white}) {
    return GoogleFonts.manrope(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle textManrope14({FontWeight fontWeight = FontWeight.w500}) {
    return GoogleFonts.manrope(
      fontSize: 14.sp,
      fontWeight: fontWeight,
      color: Colors.black,
    );
  }

  static TextStyle textManrope12({
    Color color = LmsColorUtil.greyColor4,
  }) {
    return GoogleFonts.manrope(
      fontSize: 12.sp,
      fontWeight: FontWeight.w300,
      color: color,
    );
  }

  static TextStyle textRoboto24() {
    return GoogleFonts.roboto(
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle textRoboto11(
      {Color color = Colors.black, FontWeight fontWeight = FontWeight.w400}) {
    return GoogleFonts.roboto(
      fontSize: 11.sp,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle textRoboto8() {
    return GoogleFonts.roboto(
      fontSize: 8.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textPoppins24() {
    return GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textPoppins18({Color color = Colors.black}) {
    return GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle textPoppins14({Color color = Colors.black}) {
    return GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle textPoppins12({Color color = Colors.black}) {
    return GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w300,
      color: color,
    );
  }

  static TextStyle textRubik24() {
    return GoogleFonts.rubik(
      fontSize: 24.sp,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textRubik16() {
    return GoogleFonts.rubik(
      fontSize: 16.sp,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    );
  }

  static TextStyle textRubik14() {
    return GoogleFonts.rubik(
      fontSize: 14.sp,
      fontWeight: FontWeight.w300,
      color: LmsColorUtil.greyColor4,
    );
  }

  static TextStyle textRubik10() {
    return GoogleFonts.rubik(
      fontSize: 10.sp,
      fontWeight: FontWeight.w300,
      color: LmsColorUtil.greyColor4,
    );
  }
}
