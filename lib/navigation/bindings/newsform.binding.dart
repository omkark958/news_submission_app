import 'package:get/get.dart';
import 'package:news_submission_app/presentations/newsform/controller/newsform.controller.dart';

class NewsFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewsformController());
  }
}
