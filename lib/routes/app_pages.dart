import 'package:get/get.dart';
import 'package:tracker/routes/app_routes.dart';
import 'package:tracker/view/dashboard/dashboard_binding.dart';
import 'package:tracker/view/login_page_view/login_view.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => LoginPgeView(),
      binding: DashboardBinding(),
    ),
  ];
}
