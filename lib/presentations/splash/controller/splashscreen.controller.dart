import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed("/login");
  }
}
