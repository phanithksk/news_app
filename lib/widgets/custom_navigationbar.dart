import 'package:flutter/material.dart';
import 'package:get/get.dart';

customNavigationBar({
  final List<BottomNavigationBarItem>? items,
  required final int currentIndex,
  final Color? selectedItemColor,
  final Color? unselectedItemColor,
  final void Function(int)? onTap,
  required BuildContext context,
}) {
  return BottomNavigationBar(
    items: items ??
        const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Descover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
    currentIndex: currentIndex,
    selectedItemColor: selectedItemColor ?? Theme.of(context).primaryColor,
    unselectedItemColor: Get.isDarkMode ? Colors.white60 : Colors.black54,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      color: Theme.of(context).primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelStyle: const TextStyle(
      color: Colors.black54,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    onTap: onTap,
  );
}
