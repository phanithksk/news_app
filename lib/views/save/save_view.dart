import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/custome_textfield_search.dart';
import '../../controller/home_controller.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_card_news.dart';
import '../home/widgets/new_detail.dart';

class SaveNewsView extends StatelessWidget {
  const SaveNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: customAppBar(
        title: 'Saved',
        context: context,
        isLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: customTextFieldSearch(
              isBorder: true,
              onChanged: (String) {},
              controller: TextEditingController(),
              hintText: 'Search News',
              context: context,
            ),
            // customTextFieldSearch(
            //   context: context,
            //   controller: TextEditingController(),
            //   hintText: 'search',
            //   contentPadding: const EdgeInsets.symmetric(vertical: 18),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total : ${homeController.saveData.length}',
                      style: TextStyle(
                        fontFamily: 'EN-REGULAR',
                        fontSize: context.isPhone ? 16 : 18,
                        color: Theme.of(context).hoverColor,
                      ),
                    ),
                    Text(
                      'Clear all ',
                      style: TextStyle(
                        fontFamily: 'EN-REGULAR',
                        fontSize: context.isPhone ? 16 : 18,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Here is your news that have been saved. you can search to find and clear if you do not need to wacth.',
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: 'EN-REGULAR',
                      fontSize: context.isPhone ? 14 : 16,
                      color: Theme.of(context).hoverColor),
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
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: CustomCardNews(
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
                              description: e["description"],
                              profileImage: e["profile"],
                              profileName: e["profile_name"],
                              albumImage: e["album_image"],
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
                    ),
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
