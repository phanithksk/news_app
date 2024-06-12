import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/widgets/custom_appbar.dart';
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
        padding: const EdgeInsets.only(top: 10),
        children: [
          ...List.generate(
            controller.aLLbreakingNews.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewsDetailView(
                        id: controller.aLLbreakingNews[index]["id"],
                        image: controller.aLLbreakingNews[index]["image"],
                        tile: controller.aLLbreakingNews[index]["title"],
                        subscription: controller.aLLbreakingNews[index]
                            ["subscribe"],
                        time: controller.aLLbreakingNews[index]["time"],
                        view: controller.aLLbreakingNews[index]["view"],
                        description: controller.aLLbreakingNews[index]["title"],
                        profileImage: controller.aLLbreakingNews[index]
                            ["profile"],
                        profileName: controller.aLLbreakingNews[index]
                            ["profile_name"],
                      ),
                    ),
                  );
                },
                child: Container(
                  color: Colors.blueGrey.shade50.withOpacity(0.5),
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
                                controller.aLLbreakingNews[index]["title"],
                                maxLines: 3,
                                style: TextStyle(
                                  height: 1.5,
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: 'EN-BOLD',
                                  fontSize: context.isPhone ? 16 : 18,
                                  color: AppColor().primaryColor,
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
                                      controller.aLLbreakingNews[index]
                                          ["profile"],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    controller.aLLbreakingNews[index]
                                        ["profile_name"],
                                    maxLines: 3,
                                    style: TextStyle(
                                      height: 1.5,
                                      overflow: TextOverflow.ellipsis,
                                      fontFamily: 'EN-BOLD',
                                      fontSize: context.isPhone ? 13 : 18,
                                      color: AppColor().black.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      controller.aLLbreakingNews[index]["date"],
                                      maxLines: 3,
                                      style: TextStyle(
                                        height: 1.5,
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: 'EN-REGULAR',
                                        fontSize: context.isPhone ? 13 : 18,
                                        color:
                                            AppColor().black.withOpacity(0.5),
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
                                            color: AppColor()
                                                .black
                                                .withOpacity(0.6),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            controller.aLLbreakingNews[index]
                                                ["view"],
                                            maxLines: 3,
                                            style: TextStyle(
                                              height: 1.5,
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: 'EN-REGULAR',
                                              fontSize:
                                                  context.isPhone ? 13 : 18,
                                              color: AppColor()
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
                            controller.aLLbreakingNews[index]["image"],
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
          )
        ],
      ),
    );
  }
}
