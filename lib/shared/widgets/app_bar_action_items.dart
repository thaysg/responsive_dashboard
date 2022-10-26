import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_easy/core/primary_text.dart';
import 'package:shop_easy/presenter/page_view/page_view_controller.dart';
import 'package:shop_easy/shared/widgets/calendar_widget.dart';
import 'package:shop_easy/shared/widgets/notification_badge.dart';

import '../../../core/app_assets.dart';
import '../../../core/app_colors.dart';
import '../../routes/routes_imporst.dart';
import 'circle_avatar_widget.dart';
import 'pop_up_button.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopUpButton(
          widget: SvgPicture.asset(
            calendar,
            width: 20,
            color: lilyWhite,
          ),
          onSelected: (value) {},
          child: const CalendarWidget(),
          value: CalendarWidget,
        ),
        const SizedBox(width: 10),
        PopUpButton(
          widget: Badge(
            elevation: 5,
            badgeColor: redLight,
            badgeContent: const PrimaryText(
              text: '3',
              color: secondaryDark,
              fontWeight: FontWeight.w300,
              size: 12,
            ),
            child: SvgPicture.asset(
              ring,
              width: 20.0,
              color: lilyWhite,
            ),
          ),
          onSelected: (value) {},
          child: const NotificationBadge(),
          value: NotificationBadge,
        ),
        /*  IconButton(
          icon: Badge(
            elevation: 5,
            badgeColor: redLight,
            badgeContent: const PrimaryText(
              text: '3',
              color: secondaryDark,
              fontWeight: FontWeight.w300,
              size: 12,
            ),
            child: SvgPicture.asset(
              ring,
              width: 20.0,
              color: lilyWhite,
            ),
          ),
          onPressed: () {},
        ), */
        const SizedBox(width: 10),
        const CircleAvatarWidget(
          imageUrl:
              'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
          imagePath:
              'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
          errorRadius: 17,
        ),
        GetBuilder<PageViewController>(
          builder: (_controller) {
            return PopUpButton(
              widget: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: lilyWhite,
              ),
              onSelected: (value) {
                _controller.selectedItem(1);
              },
              value: ProfilePage.routeName,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    user,
                    fit: BoxFit.cover,
                    width: 15,
                    color: secondaryDark,
                  ),
                  const PrimaryText(
                    text: 'Editar Perfil',
                    color: secondaryDark,
                  ),
                ],
              ),
              /* image: user,
              title: 'Editar Perfil', */
            );
          },
        ),
      ],
    );
  }
}
