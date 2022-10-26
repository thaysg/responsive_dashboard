import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppBarActionController extends GetxController {
  static AppBarActionController get to => Get.find();

  String dropdownValue = 'One';

  Widget? dropdown;

  void changeValue(Widget? value) {
    dropdown;
    update();
  }

  /* @override
  void onReady() {
    dropdownValue;
    super.onReady();
  } */
}
