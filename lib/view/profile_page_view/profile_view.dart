import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tracker/controller/profile_controller.dart';

class ProfilePageView extends GetView<ProfileController> {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text('TAP ${controller.counter.value}'),
      onTap: () => controller.counter,
    );
  }
}
