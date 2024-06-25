import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news_app/core/services/themes_services.dart';
import 'package:news_app/route.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final onBoarding = prefs.getBool('onBoarding') ?? false;
  runApp(MyApp(
    onBoarding: onBoarding,
  ));
}

class MyApp extends StatelessWidget {
  final bool onBoarding;
  const MyApp({super.key, required this.onBoarding});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeService().lightTheme,
      darkTheme: ThemeService().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      initialRoute: onBoarding ? '/buttomBar' : '/',
      getPages: appRoute,
    );
  }
}
