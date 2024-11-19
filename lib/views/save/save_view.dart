import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/utils/app_color.dart';
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
    var item = homeController.saveNewsData;
    return GetBuilder(
        init: HomeController(),
        initState: (state) {
          homeController.getsaveNewsData();
        },
        builder: (con) {
          return Scaffold(
            appBar: customAppBar(
              title: 'Saved',
              context: context,
              isLeading: false,
            ),
            body: Obx(() {
              if (item.value.code == 404) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${item.value.message}'),
                    ],
                  ),
                );
              } else if (Get.find<HomeController>().saveNewsData.value.data ==
                  null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return item.value.data!.isNotEmpty && item.value.data != null
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: customTextFieldSearch(
                            isBorder: true,
                            onChanged: (value) {},
                            controller: TextEditingController(),
                            hintText: 'Search News',
                            context: context,
                          ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total : ${item.value.data!.length}',
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
                              ...item.value.data!.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: CustomCardNews(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => NewsDetailView(
                                            id: e.id ?? 0,
                                            thumbnail: e.thumbnail ?? "",
                                          ),
                                        ),
                                      );
                                    },
                                    isleftImage: true,
                                    title: e.title ?? "",
                                    date: e.createdAt ?? "",
                                    image: e.thumbnail ?? "",
                                    profile: e.userProfile ?? "",
                                    profileName: e.user ?? "",
                                    views: '10',
                                  ),
                                );
                              })
                            ],
                          ),
                        )
                      ],
                    )
                  : Center(
                      child: Text(
                        "មិនមានទិន្នន័យ",
                        style: TextStyle(
                          height: 1.5,
                          overflow: TextOverflow.ellipsis,
                          fontFamily: 'KH-REGULAR',
                          fontSize: context.isPhone ? 14 : 18,
                          color: Get.isDarkMode
                              ? Colors.white60
                              : AppColor().black.withOpacity(0.6),
                        ),
                      ),
                    );
            }),
          );
        });
  }
}
