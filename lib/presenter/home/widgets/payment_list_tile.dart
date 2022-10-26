import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/responsive.dart';
import '../../../core/app_colors.dart';
import '../../../core/primary_text.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

  const PaymentListTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(
          icon,
          width: 20,
          color: Responsive.isDesktop(context) ? secondaryDark : lilyWhite,
        ),
      ),
      title: PrimaryText(
        text: label,
        size: 14,
        fontWeight: FontWeight.w500,
        color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: 'Successfully',
            size: 12,
            fontWeight: FontWeight.w400,
            color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
          ),
          PrimaryText(
            text: amount,
            size: 16,
            color: Responsive.isDesktop(context) ? lilyWhite : secondaryDark,
          ),
        ],
      ),
      onTap: () {},
      selected: true,
    );
  }
}
