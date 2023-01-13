import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracker/const/constants.dart';
import 'package:tracker/controller/auth_controller.dart';
import 'package:tracker/routes/app_pages.dart';
import 'package:tracker/routes/app_routes.dart';
import 'package:tracker/view/login_page_view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialize.then(
    (value) => {Get.put(AuthController())},
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.dashboard,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPgeView(),
    );
  }
}
