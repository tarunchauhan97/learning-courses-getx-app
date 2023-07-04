import 'package:get/get.dart';

import '../modules/Auth/bindings/auth_binding.dart';
import '../modules/Auth/views/login_view.dart';
import '../modules/CourseDetail/bindings/course_detail_binding.dart';
import '../modules/CourseDetail/views/course_detail_view.dart';
import '../modules/LmsDashboard/bindings/lms_dashboard_binding.dart';
import '../modules/LmsDashboard/views/lms_dashboard_view.dart';
import '../modules/LmsMyCourses/bindings/lms_my_courses_binding.dart';
import '../modules/LmsMyCourses/views/lms_my_courses_view.dart';
import '../modules/Support/bindings/support_binding.dart';
import '../modules/Support/views/support_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.LMS_DASHBOARD,
      page: () => LmsDashboardView(),
      binding: LmsDashboardBinding(),
    ),
    GetPage(
      name: _Paths.LMS_MY_COURSES,
      page: () => LmsMyCoursesView(),
      binding: LmsMyCoursesBinding(),
      maintainState: true,
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.COURSE_DETAIL,
      page: () => const CourseDetailView(),
      binding: CourseDetailBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => SupportView(),
      binding: SupportBinding(),
    ),
  ];
}
