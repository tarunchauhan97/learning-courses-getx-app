import 'package:get/get.dart';

import '../controllers/my_achievements_controller.dart';

class MyAchievementsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAchievementsController>(
      () => MyAchievementsController(),
    );
  }
}
