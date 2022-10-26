import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/config/responsive.dart';
import 'package:shop_easy/config/size_config.dart';
import 'package:shop_easy/presenter/credit_card/widgets/credit_card_form.dart';
import 'package:shop_easy/shared/widgets/app_bar_action_items.dart';
import 'package:shop_easy/shared/widgets/secondary_menu.dart';
import 'package:shop_easy/shared/widgets/side_menu.dart';

import './credit_card_controller.dart';

class CreditCardPage extends GetView<CreditCardController> {
  static const routeName = '/credit_card';

  const CreditCardPage({Key? key}) : super(key: key);

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
              child: Center(
                child: Text('ProfilePage'),
              ),
            ),
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 3,
                child: SecondaryMenu(
                  children: [
                    AppBarActionItems(),
                    CreditCardForm(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
