import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../core/utils/app_color.dart';
import '../../widgets/custom_card_news.dart';
import '../home/widgets/new_detail.dart';

class SaveNewsView extends StatelessWidget {
  const SaveNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Save',
                  style: TextStyle(
                    fontFamily: 'EN-BOLD',
                    fontSize: context.isPhone ? 23 : 20,
                    color: AppColor().primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Here iis your Data that you save \nWe make you easy to wacth later and manager what you need.',
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: 'EN-REGULAR',
                    fontSize: context.isPhone ? 14 : 16,
                    color: AppColor().black.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ...homeController.saveData.map((e) {
                  return CustomCardNews(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsDetailView(
                            id: e['id'],
                            image: e['image'],
                            tile: e["title"],
                            subscription: e["subscribe"],
                            time: e["time"],
                            view: e["view"],
                            description: e["title"],
                            profileImage: e["profile"],
                            profileName: e["profile_name"],
                          ),
                        ),
                      );
                    },
                    isleftImage: true,
                    title: e['title'],
                    date: e['date'],
                    image: e['image'],
                    profile: e['profile'],
                    profileName: e['profile_name'],
                    views: e['view'],
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
