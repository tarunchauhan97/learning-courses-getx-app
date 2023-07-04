import 'package:learningcourses/app/constants/app_string_constants.dart';
import 'package:learningcourses/app/theme/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => {
      runApp(learningcourses()),
    },
  );
  // runApp(learningcourses());
}

class learningcourses extends StatelessWidget {
  const learningcourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: LmsAppConstants.APP_NAME,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
          );
        });
  }
}
