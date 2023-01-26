import 'package:get/get.dart';

class AttendQuizController extends GetxController {
  final RxBool quizStart = false.obs;
  final RxBool isSelected = false.obs;
  final String questionStatement =
      "How many of the following numbers are divisible by 3 but not by 9. 4320, 2343, 3474, 4131, 5286, 5340, 6336, 7347, 8115, 9276";

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
