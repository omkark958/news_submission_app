import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_submission_app/services/api.services.dart';

class NewsformController extends GetxController {
  final formkey = GlobalKey<FormState>();
  // TextEditingController news_type = TextEditingController();
  TextEditingController news_value = TextEditingController();
  RxString dynamicLabel = "".obs;
  // ignore: non_constant_identifier_names
  final news_type = RxnString();
  final category = RxnString();
  final List<String> newsTypes = ["News URL", "News Heading", "News RSS"];
  final List<String> categories = [
    "Politics, Business & Finance",
    "Crime & Public Safety",
    "Weather & Natural Disasters",
    "Health & Medicine",
    "Science & Technology, Sports, Entertainment & Culture",
    "Lifestyle & Society"
  ];
  final webhookService = WebhookService();
  void submitNews() async {
    if (formkey.currentState!.validate()) {
      // Form is valid
      print("${news_value.text}, ${category.value} , ${news_type.value}");
      final payload = {
        "news_type": news_type.value!.trim(),
        "news_value": news_value.value.toString().trim(),
        "category": category.value!.trim(),
      };
      Response response = await webhookService.submitFormData(payload);
      print(response.status.code);
      if (response.status.code == 400) {
        Get.snackbar('${response.status.code} Error', '${response.body}',
            colorText: Colors.red);
      } else {
        Get.snackbar('Success', 'Form submitted successfully');
      }
      await Future.delayed(const Duration(seconds: 2));
      // Get.offNamed("/news");
    }
  }
}
