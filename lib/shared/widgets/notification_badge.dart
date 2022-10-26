import 'package:flutter/material.dart';
import 'package:shop_easy/core/app_colors.dart';
import 'package:shop_easy/core/primary_text.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: const PrimaryText(
              text: 'Marcar como lidas',
              color: secondaryDark,
              size: 11,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const PrimaryText(
            text: 'Notification 1',
            color: secondaryDark,
            size: 14,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const PrimaryText(
            text: 'Notification 2',
            color: secondaryDark,
            size: 14,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const PrimaryText(
            text: 'Notification 3',
            color: secondaryDark,
            size: 14,
          ),
        )
      ],
    );
  }
}
