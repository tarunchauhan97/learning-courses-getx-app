import 'package:get/get.dart';

import '../controllers/attend_quiz_controller.dart';

class AttendQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AttendQuizController>(
      () => AttendQuizController(),
    );
  }
}
