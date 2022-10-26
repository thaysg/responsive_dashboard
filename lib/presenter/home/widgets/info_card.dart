import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../core/app_colors.dart';
import '../../../core/primary_text.dart';

class InfoCard extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: Responsive.isDesktop(context)
            ? 200
            : SizeConfig.screenWidth! / 2 - 40,
      ),
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
        right: Responsive.isMobile(context) ? 20 : 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            secondaryDark.withOpacity(0.7),
            primaryDark.withOpacity(0.7),
          ],
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 2,
            color: secondaryDark.withOpacity(0.5),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                icon,
                width: 35,
                color: lilyWhite,
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 2),
              PrimaryText(
                text: label,
                color: lilyWhite,
                size: 16,
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 2),
              PrimaryText(
                text: amount,
                size: 18,
                fontWeight: FontWeight.w700,
                color: lilyWhite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
