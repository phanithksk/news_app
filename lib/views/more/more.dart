import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/views/more/widgets/dark_mode.dart';
import 'package:news_app/widgets/custom_appbar.dart';
import 'widgets/contact_view.dart';
import 'widgets/notificatiion.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: customAppBar(
        title: 'More',
        context: context,
        isLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DarkModeView(),
                  const NotificationView(),
                  const ContactsView(
                    title: 'Contacts',
                    icons: Icon(
                      Icons.phone,
                      size: 32,
                    ),
                  ),
                  const ContactsView(
                    title: 'Help',
                    icons: Icon(
                      Icons.help_outline_rounded,
                      size: 32,
                    ),
                  ),
                ],
              ),
              version(
                'Copyright \u00a9 2024 Mon Phanith. All Rights Reserved',
                'Version 1.0.0',
              ),
            ],
          ),
        ),
      ),
    );
  }

  version(String rights, String version) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            rights,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Get.locale == const Locale('km', 'KM') ? 11 : 10.5,
              fontFamily: Get.locale == const Locale('km', 'KM')
                  ? 'KH-REGULAR'
                  : 'EN-MEDIUM',
            ),
          ),
          Text(
            version,
            style: TextStyle(
              fontSize: Get.locale == const Locale('km', 'KM') ? 11 : 10.5,
              fontFamily: Get.locale == const Locale('km', 'KM')
                  ? 'KH-REGULAR'
                  : 'EN-MEDIUM',
            ),
          ),
        ],
      ),
    );
  }
}
