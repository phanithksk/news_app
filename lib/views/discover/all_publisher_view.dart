import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure/widgets/custom_appbar.dart';
import '../../../core/utils/app_color.dart';
import '../../controller/discover_controller.dart';

class AllpublisherIteamsView extends StatelessWidget {
  const AllpublisherIteamsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiscoverController());
    return Scaffold(
      appBar: customAppBar(title: "publisher", context: context),
      body: ListView(
        children: [
          ...List.generate(controller.publisherIteams.length, (index) {
            var follow = controller.publisherIteams[index]["follow"];
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => NewsDetailView(
                //       id: controller.publisherIteams[index]["id"],
                //       image: controller.publisherIteams[index]["image"],
                //       tile: controller.publisherIteams[index]["title"],
                //     ),
                //   ),
                // );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        controller.publisherIteams[index]["image"],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.publisherIteams[index]["name"],
                            style: TextStyle(
                              fontFamily: 'EN-REGULAR',
                              fontWeight: FontWeight.w600,
                              fontSize: context.isPhone ? 16 : 18,
                              color: AppColor().black,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            controller.publisherIteams[index]["subscribe"],
                            style: TextStyle(
                              fontFamily: 'EN-REGULAR',
                              fontWeight: FontWeight.w500,
                              fontSize: context.isPhone ? 12 : 14,
                              color: AppColor().black.withOpacity(
                                    0.7,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: follow != true
                            ? AppColor().primaryColor.withOpacity(0.6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: follow != false
                            ? Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              )
                            : const Border(),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: follow != true ? 20 : 15,
                        vertical: 5,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Text(
                        follow != true ? "Follow" : "Following",
                        style: TextStyle(
                          fontFamily: 'EN-REGULAR',
                          fontWeight: FontWeight.w500,
                          fontSize: context.isPhone ? 12 : 14,
                          color: follow != true
                              ? AppColor().white
                              : AppColor().primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
