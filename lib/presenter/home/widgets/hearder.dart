import 'package:flutter/material.dart';
import 'package:shop_easy/shared/widgets/text_form_widget.dart';

import '../../../config/responsive.dart';
import '../../../core/primary_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              PrimaryText(
                text: 'Dashboard',
                size: 30,
                fontWeight: FontWeight.w800,
              ),
              PrimaryText(
                text: 'Payments updates',
                size: 16,
                fontWeight: FontWeight.w400,
              )
            ],
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: Responsive.isDesktop(context) ? 1 : 4,
          child: const TextFormWidget(
            hintText: 'Search',
          ),
        ),
      ],
    );
  }
}
