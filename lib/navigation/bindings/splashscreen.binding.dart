import 'package:get/get.dart';
import 'package:news_submission_app/presentations/splash/controller/splashscreen.controller.dart';

class SplashscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashscreenController());
  }
}
