import 'package:get/get.dart';
import 'package:tracker/controller/dashboard_controller.dart';
import 'package:tracker/controller/home_controller.dart';
import 'package:tracker/controller/profile_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
