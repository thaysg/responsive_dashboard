import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/infra/data.dart';
import 'package:shop_easy/infra/models/users.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  List<Users> users = [];
  String query = '';
  final controller = TextEditingController();

  @override
  void onReady() {
    users = allUsers;
    super.onReady();
  }

  void searchUser(String query) {
    final userFilter = allUsers.where((user) {
      final userFilterd = user.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return userFilterd.contains(searchLower);
    }).toList();

    this.query = query;

    users = userFilter;
    update();
  }

  searchedUser(String query) {
    final userFilter = allUsers.where((user) {
      final userFilterd = user.name.toLowerCase();
      final searchLower = query.toLowerCase();

      return userFilterd.contains(searchLower);
    }).toList();

    this.query = query;
    users = userFilter;
    update();
  }
}
