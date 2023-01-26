import 'package:get/get.dart';

import '../controllers/lms_dashboard_controller.dart';

class LmsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LmsDashboardController>(
      () => LmsDashboardController(),fenix: true,
    );
  }
}
