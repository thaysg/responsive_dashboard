import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes_imporst.dart';

class PageViewController extends GetxController {
  static PageViewController get to => Get.find();

  var pageController = PageController();
  int page = 0;

  int index = 0;
  selectedItem(int item) {
    index = item;
    update();
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const PdvPage();
      case 2:
        return const ProfilePage();
      case 3:
        return const CreditCardPage();
      default:
        return const HomePage();
    }
  }

  /*  void navigationTapped(int page) {
    if (!pageController.hasClients) {
      pageController.animateTo(pageController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      pageController.jumpToPage(page);
    }
  } */

  @override
  void onReady() {
    super.onReady();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    page = page;
    update();
  }
}
