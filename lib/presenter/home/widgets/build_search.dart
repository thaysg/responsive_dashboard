import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop_easy/presenter/home/home_controller.dart';
import 'package:shop_easy/presenter/home/widgets/search_widget.dart';

class BuildSearch extends StatelessWidget {
  const BuildSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (controller) {
        return SearchWidget(
          text: controller.query,
          hintText: 'Pesquisar',
          onChanged: controller.searchUser,
        );
      },
    );
  }
}
