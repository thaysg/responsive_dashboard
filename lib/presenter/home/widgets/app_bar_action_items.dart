import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_easy/core/app_assets.dart';
import 'package:shop_easy/core/app_colors.dart';

import '../../../shared/widgets/circle_avatar_widget.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            calendar,
            width: 20,
            color: lilyWhite,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: SvgPicture.asset(
            ring,
            width: 20.0,
            color: lilyWhite,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
        Row(
          children: const [
            CircleAvatarWidget(),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: lilyWhite,
            ),
          ],
        ),
      ],
    );
  }
}
