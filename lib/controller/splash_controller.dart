import 'dart:async';
import 'package:get/get.dart';
import 'package:news_app/widgets/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();

    Timer(
        const Duration(seconds: 5),
        () => Get.off(
              const OnBoardingScreen(),
            ));
  }
}
