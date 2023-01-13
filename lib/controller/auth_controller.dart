import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracker/const/constants.dart';
import 'package:tracker/style/app_colors.dart';
import 'package:tracker/view/dashboard/dashboard_page.dart';
import 'package:tracker/view/login_page_view/login_view.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> firebaseUser;

  @override
  void onInit() {
    super.onInit();

    firebaseUser = Rx<User?>(firebaseAuth.currentUser);
    firebaseUser.bindStream(firebaseAuth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginPgeView());
    } else {
      Get.offAll(() => const DashboardPage());
    }
  }

  void register(String email, password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      log(e.toString());
      Get.snackbar('About User', 'User Message',
          backgroundColor: AppColors.lightsky,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            'Failed Create Account',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
    }
  }

  void login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      log(e.toString());
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Login failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText:
              Text(e.toString(), style: const TextStyle(color: Colors.white)));
    }
  }

  void logOut() async {
    await firebaseAuth.signOut();
  }
}
