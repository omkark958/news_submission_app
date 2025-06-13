import 'package:get/get.dart';
import 'package:news_submission_app/navigation/bindings/loginscreen.binding.dart';
import 'package:news_submission_app/navigation/bindings/newsform.binding.dart';
import 'package:news_submission_app/navigation/bindings/splashscreen.binding.dart';
import 'package:news_submission_app/presentations/login/loginscreen.screen.dart';
import 'package:news_submission_app/presentations/newsform/newsform.screen.dart';
import 'package:news_submission_app/presentations/splash/splashscreen.screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: "/",
        page: () => const Splashscreen(),
        binding: SplashscreenBinding()),
    GetPage(
        name: "/login",
        page: () => const LoginScreen(),
        binding: LoginscreenBinding()),
    GetPage(
        name: "/newsform",
        page: () => const NewsformScreen(),
        binding: NewsFormBinding()),
  ];
}
