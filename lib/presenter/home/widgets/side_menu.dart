import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_easy/core/app_colors.dart';

import '../../../config/size_config.dart';
import '../../../core/app_assets.dart';
import '../../../routes/routes_imporst.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  iconSize: 30,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    exit,
                    color: lilyWhite,
                  ),
                  onPressed: () {
                    Get.offAndToNamed(LoginPage.routeName);
                  },
                ),
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  home,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  pieChart,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  clipBoard,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  creditCard,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  trophy,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 20,
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                icon: SvgPicture.asset(
                  invoice,
                  color: lilyWhite,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
