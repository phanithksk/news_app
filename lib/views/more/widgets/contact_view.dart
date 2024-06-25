import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/utils/app_color.dart';

class ContactsView extends StatelessWidget {
  final String title;
  final Widget icons;
  const ContactsView({super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.7,
      color: Get.isDarkMode ? AppColor().darkCard : AppColor().white,
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
                Container(
                    height: context.isPhone ? Get.height / 20 : Get.height / 16,
                    width: context.isPhone ? Get.height / 20 : Get.height / 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: icons),
                const SizedBox(width: 15),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: Get.locale == const Locale('km', 'KM')
                        ? 'KH-REGULAR'
                        : 'EN-REGULAR',
                    fontSize: context.isPhone ? 14 : 18,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right_rounded,
              size: context.isPhone ? 24 : 34,
            ),
          ],
        ),
      ),
    );
  }
}
