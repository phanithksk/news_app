import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/views/home/home_screen.dart';
import 'package:news_app/views/more/more.dart';

import '../views/discover/discover_view.dart';
import '../views/save/save_view.dart';

class BottomNavigationBarController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;

  List screenWidget = [
    const MyHomePage(),
    const DescoverView(),
    const SaveNewsView(),
    const MoreScreen(),
  ];
}
