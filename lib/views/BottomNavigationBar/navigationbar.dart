import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/navigationbar_view_model.dart';
import 'package:news_app/widgets/custom_navigationbar.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final controller = Get.put(BottomNavigationBarController());

  void _onItemTapped(int index) {
    setState(() {
      controller.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: Center(
        child: controller.screenWidget.elementAt(controller.selectedIndex),
      ),
      bottomNavigationBar: customNavigationBar(
        context: context,
        currentIndex: controller.selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
