import 'package:learningcourses/app/components/button.dart';
import 'package:learningcourses/app/components/simple_text_field.dart';
import 'package:learningcourses/app/constants/image_constants.dart';
import 'package:learningcourses/app/modules/Auth/controllers/auth_controller.dart';
import 'package:learningcourses/app/modules/Auth/views/sign_up_view.dart';
import 'package:learningcourses/app/routes/app_pages.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:learningcourses/app/theme/text_style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends GetView<AuthController> {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 36.w, right: 36.w, bottom: 51.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 106.h),
              Image.asset(
                ImageConstants.DRONALOGOBIG,
                height: 183.h,
                width: 404.w,
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.h),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: LmsTextUtil.textPoppins24(),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Please enter the valid Username & Password to Continue",
                      style: LmsTextUtil.textPoppins14(),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SimpleTextField(
                hintText: "Username",
                textEditingController: userNameController,
                preIconData: Icons.person,
              ),
              SizedBox(height: 20.h),
              SimpleTextField(
                hintText: "Password",
                textEditingController: passwordController,
                obscureText: true,
                preIconData: Icons.password_rounded,
              ),
              SizedBox(height: 195.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  MyButton(
                      title: "Login",
                      onPressed: () {
                        Get.offNamed(Routes.LMS_DASHBOARD);
                      }),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: LmsTextUtil.textPoppins14(),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(() => SignUpView()),
                        child: Text("Sign Up",
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
