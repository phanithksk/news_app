import 'package:flutter/material.dart';
import 'package:news_app/views/home/widgets/new_detail.dart';
import '../../../widgets/custom_card_news.dart';

class AllNewsView extends StatelessWidget {
  final List data;
  const AllNewsView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                    profile: e.thumbnail,
                    profileName: e.user,
                    views: " 10",
                  )
                : Container(),
          );
        })
      ],
    );
  }
}
