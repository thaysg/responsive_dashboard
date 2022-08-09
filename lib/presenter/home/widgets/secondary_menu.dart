import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import '../../../core/app_colors.dart';
import 'app_bar_action_items.dart';
import 'payment_detail_list.dart';

class SecondaryMenu extends StatelessWidget {
  const SecondaryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              secondaryDark.withOpacity(0.7),
              primaryDark.withOpacity(0.7),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 1.5,
              spreadRadius: 1.5,
              color: secondaryDark,
            ),
          ],
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 30,
          ),
          child: Column(
            children: const [
              AppBarActionItems(),
              PaymentDetailList(),
            ],
          ),
        ),
      ),
    );
  }
}
