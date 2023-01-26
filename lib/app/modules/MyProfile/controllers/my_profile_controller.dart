import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyProfileController extends GetxController {
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController entityController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController dateOfJoiningController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController languageController = TextEditingController();

  final RxBool isReadOnly = true.obs;

  void getInitialValue() {
    userIdController.text = 'USER008';
    userNameController.text = 'Tarun Chauhan';
    emailController.text = 'chauhan.tarun@4thpointer';
    phoneNoController.text = '9306500147';
    entityController.text = 'Entity New';
    dateOfBirthController.text = '19/08/1997';
    dateOfJoiningController.text = '5/April/2022';
    locationController.text = 'India';
    roleController.text = 'Job';
    departmentController.text = 'Development';
    languageController.text = 'Hindi';
  }

  @override
  void onInit() {
    super.onInit();
    getInitialValue();
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
