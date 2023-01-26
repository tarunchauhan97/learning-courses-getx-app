import 'package:get/get.dart';

import '../controllers/lms_my_courses_controller.dart';

class LmsMyCoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LmsMyCoursesController>(() => LmsMyCoursesController(), fenix: true);
  }
}
