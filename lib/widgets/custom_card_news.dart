import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../core/utils/app_color.dart';

class CustomCardNews extends StatelessWidget {
  final String title;
  final String profile;
  final String profileName;
  final String views;
  final String date;
  final String image;
  final bool? isleftImage;

  final void Function()? onTap;

  const CustomCardNews({
    super.key,
    required this.title,
    required this.date,
    required this.image,
    this.onTap,
    required this.profile,
    required this.profileName,
    required this.views,
    this.isleftImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isleftImage == true
                  ? Container(
                      width: Get.height * 0.13,
                      height: Get.height * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: const EdgeInsets.only(right: 15),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        image,
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
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    )
                  : const SizedBox.shrink(),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      title,
                      maxLines: 3,
                      style: TextStyle(
                        height: 1.5,
                        overflow: TextOverflow.ellipsis,
                        fontFamily: 'EN-BOLD',
                        fontSize: context.isPhone ? 16 : 18,
                        color: Theme.of(context).hoverColor,
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
                            profile,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          profileName,
                          maxLines: 3,
                          style: TextStyle(
                            height: 1.5,
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'EN-REGULAR',
                            fontSize: context.isPhone ? 13 : 18,
                            color: Get.isDarkMode
                                ? Colors.white60
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
                            date,
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
                                      : AppColor().black.withOpacity(0.6),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  views,
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
              isleftImage != true
                  ? Container(
                      width: Get.height * 0.13,
                      height: Get.height * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        image,
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
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
