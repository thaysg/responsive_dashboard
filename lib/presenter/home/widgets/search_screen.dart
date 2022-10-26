import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/infra/models/users.dart';
import 'package:shop_easy/presenter/home/home_controller.dart';
import 'package:shop_easy/presenter/home/widgets/build_search.dart';
import 'package:shop_easy/shared/widgets/image_network_avatar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.chevron_left,
              color: secondaryDark,
            )),
        title: const BuildSearch(),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        initState: (_) {},
        builder: (_controller) {
          return ListView.builder(
            itemCount: _controller.users.length,
            itemBuilder: (context, index) {
              final users = _controller.users[index];

              return buildUsers(users);
            },
          );
        },
      ),
    );
  }
}

Widget buildUsers(Users users) => ListTile(
      leading: ImageNetworkAvatar(
        imagePath: users.avatar,
      ),
      title: Text(users.name),
    );
