import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop_easy/presenter/profile/widgets/profile_editing.dart';
import 'package:shop_easy/presenter/profile/widgets/user_information.dart';
import 'package:shop_easy/shared/widgets/app_bar_action_items.dart';
import 'package:shop_easy/shared/widgets/secondary_menu.dart';

import '../../config/responsive.dart';
import '../../config/size_config.dart';
import '../../shared/widgets/side_menu.dart';
import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  static const routeName = '/profile';

  const ProfilePage({Key? key}) : super(key: key);

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
              child: ProfileEditing(),
            ),
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 3,
                child: SecondaryMenu(
                  children: [
                    AppBarActionItems(),
                    UserInformation(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
