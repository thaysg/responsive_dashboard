import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../config/responsive.dart';
import '../../core/app_colors.dart';
import '../../shared/widgets/app_bar_action_items.dart';
import '../../shared/widgets/side_menu.dart';
import 'page_view_controller.dart';

class PageViewPage extends GetView<PageViewController> {
  static const routeName = '/page-view';

  const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: GetBuilder<PageViewController>(
        builder: (_controller) {
          return PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller.pageController,
            onPageChanged: _controller.selectedItem,
            children: [
              _controller.buildPages(),
            ],
          );
        },
      ),
    );
  }
}
