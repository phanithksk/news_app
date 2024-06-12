import 'package:get/get.dart';
import 'package:project_structure/views/home/home_screen.dart';
import 'package:project_structure/views/home/widgets/notificatiion_viiew.dart';
import 'package:project_structure/widgets/splash_screen.dart';
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
];
