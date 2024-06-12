import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Colors.blue.shade100,
            Colors.blue.shade500,
            Colors.blue.shade300,
            Colors.blue.shade100,
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/news_splash.png',
          fit: BoxFit.cover,
          height: 360,
        ),
      ),
    );
  }
}
