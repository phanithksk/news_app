// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/controller/home_controller.dart';
import 'package:project_structure/core/utils/app_color.dart';
import 'package:project_structure/views/home/widgets/new_detail.dart';
import 'package:project_structure/widgets/custome_textfield_search.dart';
import '../../controller/onboding_controller.dart';
import 'widgets/all_news_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final spController = Get.put(OnBoardingController());
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Theme.of(context).backgroundColor,
        title: customTextFieldSearch(
          isBorder: true,
          controller: TextEditingController(),
          hintText: 'Search News',
          context: context,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 2),
            child: GestureDetector(
              onTap: () {
                Get.toNamed("/notification");
              },
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 25,
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: AppColor().white,
                  size: 26,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Breaking news',
                  style: TextStyle(
                    fontFamily: 'EN-BOLD',
                    fontWeight: FontWeight.bold,
                    fontSize: context.isPhone ? 18 : 20,
                    color: Theme.of(context).hoverColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/break_news");
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontFamily: 'EN-REGULAR',
                      fontWeight: FontWeight.w500,
                      fontSize: context.isPhone ? 16 : 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  // currentIndex = index;
                });
              },
            ),

            /// Items
            items: List.generate(
              homeController.aLLbreakingNews.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailView(
                        id: homeController.aLLbreakingNews[index]["id"],
                        image: homeController.aLLbreakingNews[index]["image"],
                        tile: homeController.aLLbreakingNews[index]["title"],
                        subscription: homeController.aLLbreakingNews[index]
                            ["subscribe"],
                        time: homeController.aLLbreakingNews[index]["time"],
                        view: homeController.aLLbreakingNews[index]["view"],
                        description: homeController.aLLbreakingNews[index]
                            ["title"],
                             profileImage: homeController.aLLbreakingNews[index]
                            ["profile"],
                        profileName: homeController.aLLbreakingNews[index]
                            ["profile_name"],
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    homeController.aLLbreakingNews[index]["image"],
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
                    errorBuilder: (context, exception, error) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error,
                            color: Theme.of(context).hoverColor,
                            size: 35,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            Get.locale == const Locale('km', 'KM')
                                ? 'មិនមានការតភ្ជាប់អ៊ីនធឺណិត!'
                                : 'No Internet Connection!',
                            style: TextStyle(
                              fontFamily: 'EN-REGULAR',
                              fontSize: context.isPhone ? 13 : 16,
                              color: Theme.of(context).hoverColor,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
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
                color: Theme.of(context).hintColor,
              ),
              labelStyle: TextStyle(
                fontFamily: 'EN-REGULAR',
                fontWeight: FontWeight.bold,
                fontSize: context.isPhone ? 14 : 16,
                color: Theme.of(context).primaryColor,
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
                            color: Theme.of(context).hoverColor,
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
    );
  }
}

class CustomTabBarIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabBarIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = const Color(0xffFEC72E);
    paint.isAntiAlias = true;

    final Offset circleOffset = Offset(
      offset.dx + configuration.size!.width / 2,
      configuration.size!.height - 10,
    );

    canvas.drawCircle(circleOffset, 2.5, paint);
  }
}
