import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
}
