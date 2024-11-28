import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/custome_textfield_search.dart';
import '../../controller/home_controller.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_card_news.dart';
import '../home/widgets/new_detail.dart';

class SaveNewsView extends StatefulWidget {
  const SaveNewsView({super.key});

  @override
  State<SaveNewsView> createState() => _SaveNewsViewState();
}

class _SaveNewsViewState extends State<SaveNewsView> {
  final homeController = Get.put(HomeController());
  TextEditingController searchController = TextEditingController();
  var filteredData = [];

  @override
  void initState() {
    super.initState();
    homeController.getsaveNewsData();
    searchController.addListener(_filterData);
  }

  void _filterData() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredData = homeController.saveNewsData.value.data
              ?.where(
                  (item) => item.title?.toLowerCase().contains(query) ?? false)
              .toList() ??
          [];
    });
  }

  // Clear all data function
  void _clearAllData() {
    setState(() {
      homeController.clearAllData();
      filteredData.clear();
    });
  }

  @override
  void dispose() {
    searchController.removeListener(_filterData);
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Saved',
        context: context,
        isLeading: false,
      ),
      body: Obx(() {
        if (homeController.saveNewsData.value.data?.isEmpty ?? true) {
          return Center(
            child: Text('No Saved News Data'),
          );
        }

        // Data is available, proceed to show the list
        filteredData = homeController.saveNewsData.value.data ?? [];

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: customTextFieldSearch(
                isBorder: true,
                onChanged: (value) {},
                controller: searchController,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total : ${filteredData.length}',
                        style: TextStyle(
                          fontFamily: 'EN-REGULAR',
                          fontSize: context.isPhone ? 16 : 18,
                          color: Theme.of(context).hoverColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: _clearAllData,
                        child: Text(
                          'Clear all',
                          style: TextStyle(
                            fontFamily: 'EN-REGULAR',
                            fontSize: context.isPhone ? 16 : 18,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Here is your news that have been saved. You can search to find and clear if you do not need to watch.',
                    style: TextStyle(
                        height: 1.5,
                        fontFamily: 'EN-REGULAR',
                        fontSize: context.isPhone ? 14 : 16,
                        color: Theme.of(context).hoverColor),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ...filteredData.map((e) {
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
            ),
          ],
        );
      }),
    );
  }
}
