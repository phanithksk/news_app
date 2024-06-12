import 'package:flutter/material.dart';
import 'package:project_structure/core/utils/app_color.dart';

customNavigationBar({
  final List<BottomNavigationBarItem>? items,
  required final int currentIndex,
  final Color? selectedItemColor,
  final Color? unselectedItemColor,
  final void Function(int)? onTap,
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
    selectedItemColor: selectedItemColor ?? AppColor().primaryColor,
    unselectedItemColor: Colors.black54,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      color: AppColor().primaryColor,
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
