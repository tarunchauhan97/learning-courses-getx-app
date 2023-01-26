import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LmsMyCoursesController extends GetxController with GetSingleTickerProviderStateMixin {
  final countTab = 0.obs;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(initialIndex: 0, length: 6, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
