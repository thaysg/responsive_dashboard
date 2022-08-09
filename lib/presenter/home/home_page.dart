import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/core/app_colors.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import 'home_controller.dart';
import 'widgets/app_bar_action_items.dart';
import 'widgets/main_home.dart';
import 'widgets/secondary_menu.dart';
import 'widgets/side_menu.dart';

class HomePage extends GetView<HomeController> {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const SizeConfig().init(context);
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              shadowColor: secondaryDark,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      secondaryDark.withOpacity(0.7),
                      primaryDark.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  _drawerKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: lilyWhite,
                ),
              ),
              actions: const [
                AppBarActionItems(),
              ],
            )
          : const PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
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
                child: SecondaryMenu(),
              ),
          ],
        ),
      ),
    );
  }
}
