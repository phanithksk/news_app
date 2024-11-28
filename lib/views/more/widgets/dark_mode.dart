import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/services/themes_services.dart';
import 'package:news_app/controller/theme_controller.dart';

class DarkModeView extends GetView<DarkModeController> {
  @override
  final controller = Get.put(DarkModeController());

  DarkModeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Get.isDarkMode ? AppColor().darkCard : AppColor().white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.dark_mode),
                const SizedBox(width: 15),
                Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontFamily: 'EN-REGULAR',
                    fontSize: context.isPhone ? 14 : 18,
                  ),
                ),
              ],
            ),
            GetBuilder<DarkModeController>(
              builder: (_) {
                return Switch.adaptive(
                  onChanged: (darkValue) {
                    controller.darkToggle(darkValue);
                    ThemeService().changeTheme();
                  },
                  value: controller.darkStatus,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
