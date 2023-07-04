import 'package:learningcourses/app/components/button.dart';
import 'package:learningcourses/app/components/simple_text_field.dart';
import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/modules/Auth/controllers/auth_controller.dart';
import 'package:learningcourses/app/modules/Auth/views/login_view.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpView extends GetView<AuthController> {
  SignUpView({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController entityController = TextEditingController();
  final TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 31.h, top: 46.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.DRONALOGO,
                height: 114.h,
                width: 190.w,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.h),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Employee Sign Up",
                      style: LmsTextUtil.textPoppins24(),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Please enter the following details",
                      style: LmsTextUtil.textPoppins14(),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // SimpleTextField(hintText: "Name*", textEditingController: userNameController),
              // SizedBox(height: 15.h),
              // SimpleTextField(hintText: "Email", textEditingController: emailController),
              // SizedBox(height: 15.h),
              // SimpleTextField(hintText: "Phone No*", textEditingController: phoneNoController),
              // SizedBox(height: 15.h),
              // SimpleTextField(hintText: "Entity*", textEditingController: entityController),
              SizedBox(height: 33.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyButton(
                      title: "Sign Up",
                      onPressed: () {
                        Get.offNamed(Routes.LMS_DASHBOARD);
                      }),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: LmsTextUtil.textPoppins14(),
                      ),
                      GestureDetector(
                        onTap: () => Get.off(
                          () => LoginView(),
                        ),
                        child: Text("Sign In",
                            style:
                                LmsTextUtil.textPoppins14(color: LmsColorUtil.primaryThemeColor)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
