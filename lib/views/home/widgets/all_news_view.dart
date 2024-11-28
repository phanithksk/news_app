import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/utils/app_color.dart';
import 'package:news_app/views/home/widgets/new_detail.dart';
import '../../../widgets/custom_card_news.dart';

class AllNewsView extends StatelessWidget {
  final List data;
  const AllNewsView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return data.isNotEmpty
        ? ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              ...data.map((e) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: data.isNotEmpty
                      ? CustomCardNews(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsDetailView(
                                  id: e.id,
                                  thumbnail: e.thumbnail,
                                ),
                              ),
                            );
                          },
                          isleftImage: true,
                          title: e.title,
                          date: e.createdAt,
                          image: e.thumbnail,
                          profile: e.userProfile,
                          profileName: e.user,
                          views: " 10",
                        )
                      : Container(),
                );
              })
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
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
            ],
          );
  }
}
