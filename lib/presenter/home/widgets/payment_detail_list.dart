import 'package:flutter/material.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../core/app_colors.dart';
import '../../../core/primary_text.dart';
import '../../../infra/data.dart';
import 'payment_list_tile.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        SizedBox(
          width: double.infinity,
          height: 200,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  secondaryDark,
                  primaryDark,
                ],
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: lilyWhite,
                  blurRadius: 5.0,
                  offset: Offset(
                    1.0,
                    2.0,
                  ),
                )
              ],
            ),
            /*  child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                logo,
                fit: BoxFit.cover,
              ),
            ), */
            child: const Icon(
              Icons.flutter_dash_rounded,
              size: 150,
              color: lilyWhite,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activities',
              size: 18,
              fontWeight: FontWeight.w800,
              color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
            ),
            PrimaryText(
              text: '02 Mar 2021',
              size: 14,
              fontWeight: FontWeight.w400,
              color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) => PaymentListTile(
              icon: recentActivities[index]["icon"]!,
              label: recentActivities[index]["label"]!,
              amount: recentActivities[index]["amount"]!,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Upcoming Payments',
              size: 18,
              fontWeight: FontWeight.w800,
              color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
            ),
            PrimaryText(
              text: '02 Mar 2021',
              size: 14,
              fontWeight: FontWeight.w400,
              color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (index) => PaymentListTile(
              icon: upcomingPayments[index]["icon"]!,
              label: upcomingPayments[index]["label"]!,
              amount: upcomingPayments[index]["amount"]!,
            ),
          ),
        ),
      ],
    );
  }
}
