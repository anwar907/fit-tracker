import 'package:get/get.dart';

class ProfileController extends GetxController {
  var counter = 0.obs;

  void tabCounter() {
    counter.value += 1;
  }
}
