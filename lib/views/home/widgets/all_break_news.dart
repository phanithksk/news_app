import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/custom_appbar.dart';
import '../../../controller/home_controller.dart';
import '../../../core/utils/app_color.dart';
import 'new_detail.dart';

class AllBreakingNewsView extends StatelessWidget {
  const AllBreakingNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: customAppBar(title: "Breaking News", context: context),
      body: ListView(
        padding: const EdgeInsets.only(top: 10, bottom: 20),
        children: [
          ...controller.aLLbreakingNews.map(
            (e) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailView(
                      id: e["id"],
                      image: e["image"],
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
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  color: Theme.of(context).cardColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                e["title"],
                                maxLines: 3,
                                style: TextStyle(
                                  height: 1.5,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: 'EN-BOLD',
                                  fontSize: context.isPhone ? 16 : 18,
                                  color: Get.isDarkMode
                                      ? AppColor().white.withOpacity(0.8)
                                      : AppColor().primaryColor,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                      e["profile"],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    e["profile_name"],
                                    maxLines: 3,
                                    style: TextStyle(
                                      height: 1.5,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: 'EN-BOLD',
                                      fontSize: context.isPhone ? 13 : 18,
                                      color: Get.isDarkMode
                                          ? Colors.white70
                                          : AppColor().black.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      e["date"],
                                      maxLines: 3,
                                      style: TextStyle(
                                        height: 1.5,
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: 'EN-REGULAR',
                                        fontSize: context.isPhone ? 13 : 18,
                                        color: Get.isDarkMode
                                            ? Colors.white70
                                            : AppColor().black.withOpacity(0.5),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 18,
                                            color: Get.isDarkMode
                                                ? Colors.white70
                                                : AppColor()
                                                    .black
                                                    .withOpacity(0.6),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            e["view"],
                                            maxLines: 3,
                                            style: TextStyle(
                                              height: 1.5,
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: 'EN-REGULAR',
                                              fontSize:
                                                  context.isPhone ? 13 : 18,
                                              color: Get.isDarkMode
                                                  ? Colors.white70
                                                  : AppColor()
                                                      .black
                                                      .withOpacity(0.5),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: Get.height * 0.13,
                          height: Get.height * 0.12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            e["image"],
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  strokeWidth: 0.5,
                                  color: Theme.of(context).primaryColor,
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
