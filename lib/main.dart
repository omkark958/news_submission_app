import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_submission_app/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: "/",
    );
  }
}
