import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_submission_app/presentations/splash/controller/splashscreen.controller.dart';

class Splashscreen extends GetView<SplashscreenController> {
  const Splashscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            Text('News Submission App', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
