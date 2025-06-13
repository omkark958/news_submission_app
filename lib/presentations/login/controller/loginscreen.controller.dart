import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginscreenController extends GetxController {
  final formkey = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  void logInn() async {
    if (formkey.currentState!.validate()) {
      // Form is valid
      Get.snackbar('Success', 'Login successfully');
      await Future.delayed(const Duration(seconds: 1));
      Get.offNamed("/newsform");
    }
  }
}
