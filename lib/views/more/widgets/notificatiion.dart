import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.7,
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
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.notifications_rounded,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  'notifications'.tr,
                  style: TextStyle(
                    fontFamily: Get.locale == const Locale('km', 'KM')
                        ? 'KH-REGULAR'
                        : 'EN-REGULAR',
                    fontSize: context.isPhone ? 14 : 18,
                  ),
                ),
              ],
            ),
            Switch.adaptive(
              onChanged: (notiVal) {},
              value: true,
            ),
          ],
        ),
      ),
    );
  }
}
