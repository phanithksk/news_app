// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/single_news_model.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class FullScreenImage extends StatefulWidget {
  final bool singleImage;
  final String? singleUrl;
  final List<Albums>? albums;
  final int initialIndex;

  const FullScreenImage({
    super.key,
    this.singleImage = false,
    this.singleUrl,
    this.albums,
    required this.initialIndex,
  });

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  late int currentIndex = widget.initialIndex;
  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.singleImage == false
          ? Container(
              constraints: BoxConstraints.expand(
                height: MediaQuery.of(context).size.height,
              ),
              color: Colors.transparent,
              child: Stack(
                children: [
                  PhotoView(
                    backgroundDecoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    minScale: PhotoViewComputedScale.contained * 0.5,
                    maxScale: PhotoViewComputedScale.covered * 1,
                    imageProvider: NetworkImage(
                      widget.singleUrl ?? "",
                    ),
                    loadingBuilder: (context, event) =>
                        const CircularProgressIndicator(),
                  ),
                  Positioned(
                    top: 50,
                    left: 5,
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      splashRadius: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: context.isPhone ? 25 : 25,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : widget.albums != null
              ? Container(
                  color: Colors.black,
                  constraints: BoxConstraints.expand(
                    height: MediaQuery.of(context).size.height,
                  ),
                  child: Stack(
                    children: [
                      PhotoViewGallery.builder(
                        itemCount: widget.albums?.length ?? 0,
                        builder: (context, index) {
                          return PhotoViewGalleryPageOptions(
                            imageProvider: NetworkImage(
                              widget.albums![index].name ?? "",
                            ),
                            minScale: PhotoViewComputedScale.contained * 0.5,
                            maxScale: PhotoViewComputedScale.covered * 0.8,
                            initialScale: PhotoViewComputedScale.contained,
                          );
                        },
                        backgroundDecoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        loadingBuilder: (context, event) =>
                            const CircularProgressIndicator(),
                        pageController: PageController(
                          initialPage: widget.initialIndex,
                        ),
                        onPageChanged: onPageChanged,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            " ${currentIndex + 1} of ${widget.albums?.length} ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: context.isPhone ? 17.0 : 20.0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 5,
                        child: IconButton(
                          highlightColor: Colors.transparent,
                          splashRadius: 30,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: context.isPhone ? 25 : 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  'No Image found!',
                ),
    );
  }
}
