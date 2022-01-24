import 'package:phone_store_app_ui/screens/home_page.dart';
import 'package:phone_store_app_ui/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

Widget buildBottomNavBar(int currIndex, Size size, bool isDarkMode) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: isDarkMode ? const Color(0xff06090d) : Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: isDarkMode ? Colors.indigoAccent : Colors.black,
    unselectedItemColor: const Color(0xff3b22a1),
    onTap: (value) {
      if (value != currIndex) {
        if (value == 1) {
          Get.off(const HomePage());
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.android,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.mobile_android,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.apple,
        isDarkMode,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.arrow_left,
        isDarkMode,
        size,
      ),
    ],
  );
}
