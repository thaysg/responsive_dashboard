import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/core/app_colors.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../core/primary_text.dart';
import '../../../infra/data.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
            (index) => TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    left: 20.0,
                  ),
                  child: CachedNetworkImage(
                    imageUrl: '',
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      radius: 17,
                      backgroundColor: secondaryDark,
                      backgroundImage: NetworkImage(
                        transactionHistory[index]["avatar"]!,
                      ),
                    ),
                    errorWidget: (context, url, error) => const CircleAvatar(
                      backgroundColor: secondaryDark,
                      radius: 17,
                      child: Center(
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                ),
                PrimaryText(
                  text: transactionHistory[index]["label"]!,
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
                PrimaryText(
                  text: transactionHistory[index]["time"]!,
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
                PrimaryText(
                  text: transactionHistory[index]["amount"]!,
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
                PrimaryText(
                  text: transactionHistory[index]["status"]!,
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: secondaryDark,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
