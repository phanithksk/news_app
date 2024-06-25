import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/custom_appbar.dart';
import '../../../controller/notification_controller.dart';
import '../../../core/utils/app_color.dart';

class NotiificatiionView extends StatelessWidget {
  const NotiificatiionView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotificationController());
    return Scaffold(
      appBar: customAppBar(title: "Notification", context: context),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        children: [
          ...controller.notifications.map((e) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        e["date"],
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'EN-REGULAR',
                          fontSize: context.isPhone ? 16 : 18,
                          color: Get.isDarkMode
                              ? Colors.grey
                              : AppColor().black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 0.5,
                          width: double.infinity,
                          color: Get.isDarkMode
                              ? Colors.grey
                              : AppColor().black.withOpacity(0.3),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ...List.generate(
                    e["data"].length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              e["data"][index]["profile"].toString(),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e["data"][index]["title"].toString(),
                                  maxLines: 3,
                                  style: TextStyle(
                                    height: 1.5,
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: 'EN-BOLD',
                                    fontSize: context.isPhone ? 14 : 16,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : AppColor().primaryColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  e["data"][index]["time"].toString(),
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontFamily: 'EN-REGULAR',
                                    fontSize: context.isPhone ? 12 : 14,
                                    color: Get.isDarkMode
                                        ? Colors.grey.shade500
                                        : AppColor().black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              e["data"][index]["image"].toString(),
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
