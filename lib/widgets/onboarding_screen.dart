// ignore_for_file: use_build_context_synchronously

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:project_structure/controller/onboding_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/utils/app_color.dart';
import '../views/BottomNavigationBar/navigationbar.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();
  final spController = Get.put(OnBoardingController());

  @override
  void initState() {
    super.initState();
    controller = CarouselController();
  }

  @override
  void dispose() {
    spController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: Get.isDarkMode
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 1.15,
              viewportFraction: 0.72,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),

            /// Items
            items: List.generate(
              spController.iteam.length,
              (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  spController.iteam[index],
                  fit: context.isLandscape
                      ? BoxFit.cover
                      : context.isPhone
                          ? BoxFit.fill
                          : BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 0.5,
                        color: AppColor().primaryColor,
                      ),
                    );
                  },
                  errorBuilder: (context, exception, error) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Theme.of(context).hoverColor,
                          size: 35,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Get.locale == const Locale('km', 'KM')
                              ? 'មិនមានការតភ្ជាប់អ៊ីនធឺណិត!'
                              : 'No Internet Connection!',
                          style: TextStyle(
                            fontFamily: 'EN-REGULAR',
                            fontSize: context.isPhone ? 13 : 16,
                            color: Theme.of(context).hoverColor,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Get the latest and updated\n news easily with us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'EN-BOLD',
                    fontSize: context.isPhone ? 20 : 22,
                    color: Theme.of(context).hoverColor,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  "Our app is committed to providing you with accurate, unbiased news, ensuring you stay informed with integrity.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'EN-REGULAR',
                    fontSize: context.isPhone ? 16 : 18,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    spController.iteam.length,
                    (index) => Container(
                      height: 9,
                      width: currentIndex == index ? 20 : 10,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: currentIndex == index
                            ? AppColor().primaryColor
                            : const Color.fromARGB(255, 116, 151, 207),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setBool('onBoarding', true);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const BottomNavigationBarScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontFamily: 'EN-REGULAR',
                            fontSize: 16,
                            color: AppColor().primaryColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (currentIndex == spController.iteam.length - 1) {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            await prefs.setBool('onBoarding', true);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigationBarScreen(),
                              ),
                            );
                          }
                          controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.decelerate);
                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: AppColor().primaryColor,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColor().white,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
