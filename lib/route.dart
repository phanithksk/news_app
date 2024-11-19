import 'package:get/get.dart';
import 'package:news_app/views/discover/discover_view.dart';
import 'package:news_app/views/home/home_screen.dart';
import 'package:news_app/views/home/widgets/notificatiion_viiew.dart';
import 'package:news_app/widgets/splash_screen.dart';
import 'views/BottomNavigationBar/navigationbar.dart';
import 'views/discover/all_publisher_view.dart';
import 'views/home/widgets/all_break_news.dart';

final appRoute = [
  GetPage(name: '/', page: () => const SplashScreen()),
  GetPage(name: '/buttomBar', page: () => const BottomNavigationBarScreen()),
  GetPage(name: '/home', page: () => const MyHomePage()),
  GetPage(name: '/notification', page: () => const NotiificatiionView()),
  GetPage(name: '/break_news', page: () => const AllBreakingNewsView()),
  GetPage(name: '/all_publisher', page: () => const AllpublisherIteamsView()),
  GetPage(name: '/descover', page: () => const DescoverView()),
];
