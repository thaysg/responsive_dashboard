import 'package:flutter/material.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../core/app_assets.dart';
import '../../../core/app_colors.dart';
import '../../../core/primary_text.dart';
import 'bar_chart.dart';
import 'hearder.dart';
import 'history_table.dart';
import 'info_card.dart';
import 'payment_detail_list.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            SizedBox(height: SizeConfig.blockSizeVertical! * 4),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.spaceBetween,
                children: const [
                  InfoCard(
                    icon: creditCard,
                    label: 'Transafer via \nCard number',
                    amount: '\$1200',
                  ),
                  InfoCard(
                    icon: transfer,
                    label: 'Transafer via \nOnline Banks',
                    amount: '\$150',
                  ),
                  InfoCard(
                    icon: bank,
                    label: 'Transafer \nSame Bank',
                    amount: '\$1500',
                  ),
                  InfoCard(
                    icon: invoice,
                    label: 'Transafer to \nOther Bank',
                    amount: '\$1500',
                  ),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    PrimaryText(
                      text: 'Balance',
                      size: 16,
                      fontWeight: FontWeight.w400,
                      color: secondaryDark,
                    ),
                    PrimaryText(
                      text: '\$1500',
                      size: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ],
                ),
                const PrimaryText(
                  text: 'Past 30 DAYS',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 3),
            const SizedBox(
              height: 180,
              child: BarChartCopmponent(),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PrimaryText(
                  text: 'History',
                  size: 30,
                  fontWeight: FontWeight.w800,
                ),
                PrimaryText(
                  text: 'Transaction of last 6 month',
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 3),
            const HistoryTable(),
            if (!Responsive.isDesktop(context)) const PaymentDetailList()
          ],
        ),
      ),
    );
  }
}
