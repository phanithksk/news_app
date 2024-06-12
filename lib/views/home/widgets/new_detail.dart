import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project_structure/core/utils/app_color.dart';

class NewsDetailView extends StatefulWidget {
  final String image;
  final int id;
  final String tile;
  final String subscription;
  final String time;
  final String view;
  final String description;
  final String profileName;
  final String profileImage;

  const NewsDetailView({
    super.key,
    required this.image,
    required this.id,
    required this.tile,
    required this.subscription,
    required this.time,
    required this.view,
    required this.description,
    required this.profileName,
    required this.profileImage,
  });

  @override
  _NewsDetailViewState createState() => _NewsDetailViewState();
}

class _NewsDetailViewState extends State<NewsDetailView> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _isLeadingVisible = ValueNotifier(true);

  @override
  void initState() {
    super.initState();
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
                  widget.image,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(widget.image),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.profileName,
                            style: TextStyle(
                              fontFamily: 'EN-BOLD',
                              fontWeight: FontWeight.w600,
                              fontSize: context.isPhone ? 12 : 14,
                              color: AppColor().black.withOpacity(
                                    0.7,
                                  ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.subscription,
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
                              color: AppColor().black.withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.time,
                              style: TextStyle(
                                height: 1.5,
                                fontFamily: 'EN-REGULAR',
                                fontSize: context.isPhone ? 12 : 14,
                                color: AppColor().black.withOpacity(0.9),
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
                              color: AppColor().black.withOpacity(0.7),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.view,
                              style: TextStyle(
                                height: 1.5,
                                fontFamily: 'EN-REGULAR',
                                fontSize: context.isPhone ? 12 : 14,
                                color: AppColor().black.withOpacity(0.9),
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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.tile,
                    style: TextStyle(
                      height: 1.5,
                      fontFamily: 'EN-BOLD',
                      fontSize: context.isPhone ? 20 : 20,
                      color: Theme.of(context).hoverColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.description,
                    style: TextStyle(
                      height: 1.5,
                      fontFamily: 'EN-REGULAR',
                      fontWeight: FontWeight.w500,
                      fontSize: context.isPhone ? 16 : 20,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(
                    2,
                    (index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        widget.image,
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
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'In Flutter, you can use a NestedScrollView widget to create a scrollable view with multiple scrolling sections that can scroll independently of each other. This is commonly used when you have a header that should remain visible while the content below it scrolls. In this article, we are going to implement the NestedScrollView widget. A sample video is given below to get an idea about what we are going to do in this article.',
                    style: TextStyle(
                      height: 1.5,
                      fontFamily: 'EN-REGULAR',
                      fontSize: context.isPhone ? 16 : 20,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...List.generate(
                    2,
                    (index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjJnvGDX3deYNPUW_Jm6nUjsQn1OmlGkZzww&s',
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
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
