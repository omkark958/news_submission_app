import 'package:get/get.dart';

class WebhookService extends GetConnect {
  final String webhookUrl =
      'https://hook.eu2.make.com/t1w4d8bpo4azvzokniivx9ngvkjlr2bu';

  Future<Response> submitFormData(Map<String, dynamic> data) async {
    try {
      final response = await get(webhookUrl);
      return response;
    } catch (e) {
      print("Error posting to webhook: $e");
      return const Response(statusCode: 500, statusText: "Error");
    }
  }
}
