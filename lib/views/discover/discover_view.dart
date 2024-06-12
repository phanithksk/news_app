import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/core/utils/app_color.dart';
import '../../controller/discover_controller.dart';
import '../../controller/home_controller.dart';
import '../../widgets/custome_textfield_search.dart';
import '../home/home_screen.dart';
import '../home/widgets/all_news_view.dart';

class DescoverView extends StatefulWidget {
  const DescoverView({super.key});

  @override
  State<DescoverView> createState() => _DescoverViewState();
}

class _DescoverViewState extends State<DescoverView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    final controller = Get.put(DiscoverController());
    final homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
                  'Discover',
                  style: TextStyle(
                    fontFamily: 'EN-BOLD',
                    fontWeight: FontWeight.bold,
                    fontSize: context.isPhone ? 23 : 20,
                    color: AppColor().primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Easy to find every lestest news from all \nover the world in your hands.',
                  style: TextStyle(
                    height: 1.5,
                    fontFamily: 'EN-REGULAR',
                    fontWeight: FontWeight.w500,
                    fontSize: context.isPhone ? 14 : 16,
                    color: AppColor().black.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: customTextFieldSearch(
                        isBorder: true,
                        onChanged: (String) {},
                        controller: TextEditingController(),
                        hintText: 'Search News',
                        context: context,
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                    Container(
                      height: 52,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColor().primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      clipBehavior: Clip.antiAlias,
                      child: Icon(
                        Icons.keyboard_voice_rounded,
                        size: 26,
                        color: AppColor().white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Publishers',
                        style: TextStyle(
                          fontFamily: 'EN-BOLD',
                          fontWeight: FontWeight.bold,
                          fontSize: context.isPhone ? 18 : 20,
                          color: AppColor().primaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/all_publisher");
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontFamily: 'EN-REGULAR',
                            fontWeight: FontWeight.w500,
                            fontSize: context.isPhone ? 14 : 18,
                            color: AppColor().primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      children: [
                        ...List.generate(controller.publisherIteams.length,
                            (index) {
                          var follow =
                              controller.publisherIteams[index]["follow"];
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.grey.shade100,
                                  Colors.blue.shade50,
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).cardColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.network(
                                    controller.publisherIteams[index]['image'],
                                    fit: BoxFit.cover,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
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
                                ),
                                Text(
                                  controller.publisherIteams[index]['name'],
                                  style: TextStyle(
                                    fontFamily: 'EN-BOLD',
                                    fontSize: context.isPhone ? 12 : 16,
                                    color: AppColor().primaryColor,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: follow != false
                                        ? Colors.black12.withOpacity(0.06)
                                        : Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: follow != true ? 18 : 10,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: Text(
                                    follow != true ? "Follow" : "Following",
                                    style: TextStyle(
                                      fontFamily: 'EN-BOLD',
                                      fontSize: context.isPhone ? 12 : 18,
                                      color: AppColor().primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'News',
                    style: TextStyle(
                      fontFamily: 'EN-BOLD',
                      fontSize: context.isPhone ? 20 : 22,
                      color: AppColor().primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TabBar(
                    isScrollable: true,
                    controller: tabController,
                    indicator: CustomTabBarIndicator(),
                    dividerColor: Colors.transparent,
                    unselectedLabelStyle: TextStyle(
                      fontFamily: 'EN-REGULAR',
                      fontWeight: FontWeight.w500,
                      fontSize: context.isPhone ? 14 : 16,
                      color: Colors.grey.shade600,
                    ),
                    labelStyle: TextStyle(
                      fontFamily: 'EN-REGULAR',
                      fontWeight: FontWeight.bold,
                      fontSize: context.isPhone ? 14 : 16,
                      color: AppColor().primaryColor,
                    ),
                    tabAlignment: TabAlignment.start,
                    tabs: [
                      ...homeController.category.map(
                        (e) {
                          return Tab(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.isPhone ? 5 : 25,
                              ),
                              child: Text(
                                e['title'],
                                style: TextStyle(
                                  fontSize: context.isPhone ? 16 : 18,
                                  fontFamily: 'EN-REGULAR',
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ...homeController.category.map((e) {
                        return AllNewsView(
                          data: e["data"],
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
