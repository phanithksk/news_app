import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/home_controller.dart';
import 'package:news_app/core/utils/app_color.dart';

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
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _isLeadingVisible = ValueNotifier(true);
  final controller = Get.put(HomeController());
  final staticAnchorKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    controller.getSingleNewsData(newID: widget.id);
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _isLeadingVisible.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      if (_scrollController.offset > 50 && _isLeadingVisible.value) {
        _isLeadingVisible.value = false;
      } else if (_scrollController.offset <= 50 && !_isLeadingVisible.value) {
        _isLeadingVisible.value = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var item = controller.singleNewsData;
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              surfaceTintColor: Colors.transparent,
              expandedHeight: 200.0,
              pinned: true,
              floating: false,
              stretch: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const [
                  StretchMode.blurBackground,
                  StretchMode.zoomBackground,
                ],
                titlePadding: EdgeInsets.zero,
                centerTitle: false,
                background: Image.network(
                  widget.thumbnail,
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
              ),
              leading: ValueListenableBuilder<bool>(
                valueListenable: _isLeadingVisible,
                builder: (context, isVisible, child) {
                  return isVisible
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundColor:
                                  AppColor().black.withOpacity(0.5),
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
                        )
                      : Container();
                },
              ),
              actions: [
                ValueListenableBuilder<bool>(
                  valueListenable: _isLeadingVisible,
                  builder: (context, isVisible, child) {
                    return isVisible
                        ? Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColor().black.withOpacity(0.5),
                                  child: const Icon(
                                    Icons.bookmark_border_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                  backgroundColor:
                                      AppColor().black.withOpacity(0.5),
                                  child: const Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container();
                  },
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            ...item.value.data.map((e) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage('${e.userProfile}'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              e.username,
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
                                color: AppColor().black.withOpacity(0.05),
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timelapse_rounded,
                                    size: 15,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : AppColor().black.withOpacity(0.7),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    e.createdAt,
                                    style: TextStyle(
                                      height: 1.5,
                                      fontFamily: 'KH-REGULAR',
                                      fontSize: context.isPhone ? 12 : 14,
                                      color: Get.isDarkMode
                                          ? Colors.white70
                                          : AppColor().black.withOpacity(0.9),
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
                                color: AppColor().black.withOpacity(0.05),
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    size: 15,
                                    color: Get.isDarkMode
                                        ? Colors.white70
                                        : AppColor().black.withOpacity(0.7),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                      height: 1.5,
                                      fontFamily: 'KH-REGULAR',
                                      fontSize: context.isPhone ? 12 : 14,
                                      color: Get.isDarkMode
                                          ? Colors.white70
                                          : AppColor().black.withOpacity(0.9),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e.title,
                          style: TextStyle(
                            height: 1.5,
                            fontFamily: 'KH-REGULAR',
                            fontSize: context.isPhone ? 16 : 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).hoverColor,
                          ),
                        ),
                        const SizedBox(height: 10),
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
                            // "img": Style(
                            //   padding: HtmlPaddings.only(top: 10),
                            //   alignment: Alignment.center,
                            //   width: Width(MediaQuery.of(context).size.width),
                            //   height: Height(MediaQuery.of(context).size.width),
                            // ),
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

                        // ...List.generate(widget.albumImage.length, (index) {
                        //   return Container(
                        //     width: double.infinity,
                        //     margin: const EdgeInsets.only(bottom: 20),
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(15),
                        //     ),
                        //     clipBehavior: Clip.antiAlias,
                        //     child: Image.network(
                        //       widget.albumImage[index].toString(),
                        //       fit: BoxFit.cover,
                        //       loadingBuilder: (context, child, loadingProgress) {
                        //         if (loadingProgress == null) {
                        //           return child;
                        //         }
                        //         return Center(
                        //           child: CircularProgressIndicator(
                        //             strokeWidth: 0.5,
                        //             color: Theme.of(context).primaryColor,
                        //           ),
                        //         );
                        //       },
                        //       errorBuilder: (context, error, stackTrace) =>
                        //           const Icon(Icons.error),
                        //     ),
                        //   );
                        // }),

                        const SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
