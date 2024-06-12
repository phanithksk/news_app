import 'package:flutter/material.dart';
import '../../../widgets/custom_card_news.dart';
import 'new_detail.dart';

class AllNewsView extends StatelessWidget {
  final List data;
  const AllNewsView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...data.map((e) {
          return CustomCardNews(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailView(
                    id: e['id'],
                    image: e['image'],
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
            isleftImage: true,
            title: e['title'],
            date: e['date'],
            image: e['image'],
            profile: e['profile'],
            profileName: e['profile_name'],
            views: e['view'],
          );
        })
      ],
    );
  }
}
