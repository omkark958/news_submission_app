import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_submission_app/presentations/newsform/controller/newsform.controller.dart';

class NewsformScreen extends GetView<NewsformController> {
  const NewsformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Submit News"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 80, 137, 201),
      ),
      body: Center(
        child: Container(
          width: isLargeScreen ? 500 : double.infinity,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFFE3F2FD),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Form(
            key: controller.formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<String>(
                  value: controller.news_type.value,
                  decoration: const InputDecoration(
                    labelText: 'Select News Type',
                    border: OutlineInputBorder(),
                  ),
                  items: controller.newsTypes
                      .map((type) => DropdownMenuItem(
                            value: type,
                            child: Text(type),
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.news_type.value = value;
                    controller.dynamicLabel.value = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a news type';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Obx(() => TextFormField(
                      controller: controller.news_value,
                      decoration: InputDecoration(
                        labelText: controller.dynamicLabel.value,
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter ${controller.dynamicLabel.value}';
                        }
                        return null;
                      },
                    )),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: controller.category.value,
                  decoration: const InputDecoration(
                    labelText: 'Select News Category',
                    border: OutlineInputBorder(),
                  ),
                  items: controller.categories
                      .map((category) => DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.category.value = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a news category';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: controller.submitNews,
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Submit News",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color.fromARGB(255, 85, 145, 214),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
