import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/presenter/home/widgets/payment_detail_list.dart';
import 'package:shop_easy/shared/widgets/app_bar_action_items.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import '../../shared/widgets/secondary_menu.dart';
import '../../shared/widgets/side_menu.dart';
import 'home_controller.dart';
import 'widgets/main_home.dart';

class HomePage extends GetView<HomeController> {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            const Expanded(
              flex: 10,
              child: MainHome(),
            ),
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 3,
                child: SecondaryMenu(
                  children: [
                    AppBarActionItems(),
                    PaymentDetailList(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
