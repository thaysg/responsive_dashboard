import 'package:flutter/material.dart';
import 'package:shop_easy/config/responsive.dart';
import 'package:shop_easy/config/size_config.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/core/primary_text.dart';
import 'package:shop_easy/shared/widgets/circle_avatar_widget.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        Stack(
          children: [
            const CircleAvatarWidget(
              radius: 70,
              errorRadius: 70,
              width: 70,
              imageUrl:
                  'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
              imagePath:
                  'https://www.gamespot.com/a/uploads/screen_kubrick/1574/15746725/3730466-evo_ironman_gs.jpg',
            ),
            Positioned(
              bottom: Responsive.isDesktop(context) ? 0 : 5,
              right: Responsive.isDesktop(context) ? 0 : 5,
              child: CircleAvatar(
                backgroundColor:
                    Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
                radius: Responsive.isDesktop(context) ? 20 : 15,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    size: Responsive.isDesktop(context) ? 20 : 15,
                    color: Responsive.isDesktop(context)
                        ? secondaryDark
                        : lilyWhite,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        PrimaryText(
          text: 'Tony Stark',
          size: 25,
          fontWeight: FontWeight.w800,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
        const SizedBox(height: 10),
        PrimaryText(
          text: '@tonystark',
          size: 22,
          fontWeight: FontWeight.w400,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
        const SizedBox(height: 10),
        PrimaryText(
          text: 'iamironman@avengers.com',
          size: 20,
          fontWeight: FontWeight.w500,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
        const SizedBox(height: 10),
        PrimaryText(
          text: '(17)99192-9394',
          size: 20,
          fontWeight: FontWeight.w500,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
        const SizedBox(height: 10),
        PrimaryText(
          text: '890 Fifth Avenue, Manhattan, New York City',
          textAlign: TextAlign.center,
          size: 18,
          fontWeight: FontWeight.w500,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
        const SizedBox(height: 10),
        PrimaryText(
          text: 'C.E.O',
          size: 24,
          fontWeight: FontWeight.w500,
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
        ),
      ],
    );
  }
}
