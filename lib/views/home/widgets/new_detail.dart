import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_controller.dart';
import 'package:news_app/controller/share_controller.dart';
import 'package:news_app/core/utils/app_color.dart';
import 'package:news_app/views/home/widgets/image_view.dart';

class NewsDetailView extends StatefulWidget {
  final int id;
  final String thumbnail;

  const NewsDetailView({
    super.key,
    required this.id,
    required this.thumbnail,
  });

  @override
  _NewsDetailViewState createState() => _NewsDetailViewState();
}

class _NewsDetailViewState extends State<NewsDetailView> {
  final controller = Get.put(HomeController());
  final shareController = Get.put(ShareController());
  final staticAnchorKey = GlobalKey();
  bool isSave = false;
  @override
  void initState() {
    super.initState();
    controller.getSingleNewsData(newID: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    var item = controller.singleNewsData;
    return Scaffold(
      body: Obx(() {
        if (item.value.code == 404) {
          return Text('${item.value.message}');
        } else if (Get.find<HomeController>().singleNewsData.value.data ==
            null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                pinned: true,
                floating: false,
                stretch: true,
                systemOverlayStyle: SystemUiOverlayStyle.light,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Stack(
                      children: [
                        Image.network(
                          widget.thumbnail,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ],
                    );
                  },
                ),
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      backgroundColor: AppColor().black.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Platform.isAndroid
                              ? Icons.arrow_back
                              : Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Obx(
                      () => Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.postSaveNews(newsID: widget.id);
                              if (controller.postSaveNewsData.value.data ==
                                  'News saved successfully') {
                                controller.isSave.value = true;
                              } else {
                                controller.isSave.value = false;
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: Icon(
                                controller.isSave.value == true
                                    ? Icons.bookmark
                                    : Icons.bookmark_border_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          ...List.generate(
                            item.value.data!.length,
                            (index) => GestureDetector(
                              onTap: () {
                                shareController.share(
                                  '${item.value.data![index].title}',
                                  '${item.value.data![index].share}',
                                );
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.5),
                                child: const Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ];
          },
          body: item.value.data!.isNotEmpty
              ? ListView(
                  padding: EdgeInsets.only(top: 20),
                  children: [
                    ...item.value.data!.map((e) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              e.title ?? "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                height: 1.5,
                                fontFamily: 'KH-REGULAR',
                                fontSize: context.isPhone ? 16 : 20,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).hoverColor,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          NetworkImage('${e.userProfile}'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      e.username ?? "",
                                      style: TextStyle(
                                        fontFamily: 'KH-REGULAR',
                                        fontWeight: FontWeight.w600,
                                        fontSize: context.isPhone ? 12 : 14,
                                        color: Get.isDarkMode
                                            ? Colors.white70
                                            : AppColor().black.withOpacity(0.7),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            AppColor().black.withOpacity(0.05),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.timelapse_rounded,
                                            size: 15,
                                            color: Get.isDarkMode
                                                ? Colors.white70
                                                : AppColor()
                                                    .black
                                                    .withOpacity(0.7),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            e.createdAt ?? "",
                                            style: TextStyle(
                                              height: 1.5,
                                              fontFamily: 'KH-REGULAR',
                                              fontSize:
                                                  context.isPhone ? 12 : 14,
                                              color: Get.isDarkMode
                                                  ? Colors.white70
                                                  : AppColor()
                                                      .black
                                                      .withOpacity(0.9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            AppColor().black.withOpacity(0.05),
                                      ),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 15,
                                            color: Get.isDarkMode
                                                ? Colors.white70
                                                : AppColor()
                                                    .black
                                                    .withOpacity(0.7),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                              height: 1.5,
                                              fontFamily: 'KH-REGULAR',
                                              fontSize:
                                                  context.isPhone ? 12 : 14,
                                              color: Get.isDarkMode
                                                  ? Colors.white70
                                                  : AppColor()
                                                      .black
                                                      .withOpacity(0.9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Html(
                                  key: staticAnchorKey,
                                  data: e.content,
                                  onCssParseError: (css, messages) {
                                    for (var element in messages) {
                                      debugPrint(element.toString());
                                    }
                                    return '';
                                  },
                                  onLinkTap: (url, _, __) {},
                                  style: {
                                    "body": Style(
                                      textAlign: TextAlign.justify,
                                      color: Theme.of(context).hoverColor,
                                      lineHeight: const LineHeight(1.6),
                                      fontSize: context.isPhone
                                          ? FontSize.large
                                          : FontSize.xLarge,
                                      fontFamily: 'KH-REGULAR',
                                    ),
                                  },
                                ),
                                e.albums != null && e.albums != []
                                    ? ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: e.albums!.length,
                                        itemBuilder: (context, idx) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        FullScreenImage(
                                                      albums: e.albums,
                                                      initialIndex: idx,
                                                      singleImage: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  e.albums![idx].name ?? "",
                                                  fit: BoxFit.cover,
                                                  errorBuilder: (context, error,
                                                          stackTrace) =>
                                                      SizedBox(
                                                    height: Get.height * 0.2,
                                                    child: const Icon(
                                                      Icons.error,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    : const SizedBox.shrink(),
                                const SizedBox(height: 10),
                              ],
                            ),
                          )
                        ],
                      );
                    })
                  ],
                )
              : SizedBox.shrink(),
        );
      }),
    );
  }
}
