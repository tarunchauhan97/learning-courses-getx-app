import 'package:get/get.dart';

import '../controllers/my_profile_controller.dart';

class MyProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyProfileController>(
      () => MyProfileController(),
    );
  }
}
