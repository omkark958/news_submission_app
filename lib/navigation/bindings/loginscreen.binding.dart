import 'package:get/get.dart';
import 'package:news_submission_app/presentations/login/controller/loginscreen.controller.dart';

class LoginscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginscreenController());
  }
}
